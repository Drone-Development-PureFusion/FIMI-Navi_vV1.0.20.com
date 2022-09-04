.class public Lcom/fimi/app/x8s/controls/X8MainAiFlyController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8MainAiFlyController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private aiFlyBlank:Landroid/view/View;

.field private confirmContent:Landroid/view/View;

.field private contentView:Landroid/view/View;

.field fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private imgAiAerialPhotograph:Landroid/widget/ImageView;

.field private imgAiAutoPhoto:Landroid/widget/ImageView;

.field private imgAiFixedwing:Landroid/widget/ImageView;

.field private imgAiFollow:Landroid/widget/ImageView;

.field private imgAiFollowToHostpot:Landroid/widget/ImageView;

.field private imgAiHeadingLock:Landroid/widget/ImageView;

.field private imgAiPointToPoint:Landroid/widget/ImageView;

.field private imgAiReturnHome:Landroid/widget/ImageView;

.field private imgAiRout:Landroid/widget/ImageView;

.field private imgAiSar:Landroid/widget/ImageView;

.field private imgAiSrcew:Landroid/widget/ImageView;

.field private imgAiSurroundToPoint:Landroid/widget/ImageView;

.field private imgAiTakeLandOff:Landroid/widget/ImageView;

.field private imgAiTtipod:Landroid/widget/ImageView;

.field private imgFlyGravitation:Landroid/widget/ImageView;

.field private isAiRunning:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private mX8AiAerialPhotographConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAerialPhotographConfirmModule;

.field private mX8AiAutoPhotoConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;

.field private mX8AiFixedwingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;

.field private mX8AiFollowConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;

.field private mX8AiGravitationConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;

.field private mX8AiHeadingLockConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;

.field private mX8AiLandingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;

.field private mX8AiLinesConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;

.field private mX8AiPoint2PointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;

.field private mX8AiReturnConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;

.field private mX8AiSarConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSarConfirmModule;

.field private mX8AiScrewComnfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewConfirmModule;

.field private mX8AiSurroundToPointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;

.field private mX8AiTakeoffConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;

.field private mX8AiTtipodConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTtipodConfirmModule;

.field private menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field private rlAiFly:Landroid/view/View;

.field private rlAiFlyItems:Landroid/view/View;

.field private stubAiFlyAllItems:Landroid/view/ViewStub;

.field private svAiItems:Landroid/widget/ScrollView;

.field private tvAerialShot:Landroid/widget/TextView;

.field private tvAiAutoPhoto:Landroid/widget/TextView;

.field private tvAiFollow:Landroid/widget/TextView;

.field private tvAiGravitation:Landroid/widget/TextView;

.field private tvAiPointToPoint:Landroid/widget/TextView;

.field private tvAiReturnHome:Landroid/widget/TextView;

.field private tvAiRout:Landroid/widget/TextView;

.field private tvAiSar:Landroid/widget/TextView;

.field private tvAiScrew:Landroid/widget/TextView;

.field private tvAiSurroundToPoint:Landroid/widget/TextView;

.field private tvAiTakeLandOff:Landroid/widget/TextView;

.field private tvFixedwing:Landroid/widget/TextView;

.field private tvHeadLock:Landroid/widget/TextView;

.field private tvTripod:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 95
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->ALL_ITEMS:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFly:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->svAiItems:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->MAX_WIDTH:I

    return p1
.end method

.method static synthetic access$402(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->width:I

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->width:I

    return v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    return-object v0
.end method


# virtual methods
.method public closeAiUi(ZZ)V
    .locals 6
    .param p1, "isShowOther"    # Z
    .param p2, "isShowRightIcon"    # Z

    .prologue
    const/4 v5, 0x0

    .line 378
    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->ALL_ITEMS:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 379
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->aiFlyBlank:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow:Z

    if-eqz v1, :cond_0

    .line 381
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow:Z

    .line 382
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->contentView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 383
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 384
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 385
    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$1;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    invoke-interface {v1, p1, p2}, Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;->onCloseAiUi(ZZ)V

    .line 396
    return-void
.end method

.method public defalutNextUi(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x0

    .line 223
    sget-object v0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$12;->$SwitchMap$com$fimi$app$x8s$enums$X8AiFlyMenuEnum:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 225
    :pswitch_1
    if-eqz p1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLinesConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLinesConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;

    invoke-virtual {v0, v2, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    goto :goto_0

    .line 241
    :pswitch_3
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    goto :goto_0

    .line 244
    :pswitch_4
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    goto :goto_0

    .line 247
    :pswitch_5
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    goto :goto_0

    .line 250
    :pswitch_6
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    goto :goto_0

    .line 253
    :pswitch_7
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    goto :goto_0

    .line 256
    :pswitch_8
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public defaultVal()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setAllEnabled()V

    .line 183
    :cond_0
    return-void
.end method

.method public getCameraSetting(Z)V
    .locals 1
    .param p1, "isReset"    # Z

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->reset()V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getCameraManager()Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->getSettings(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 403
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->aiFlyBlank:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method public initAllItems()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->ALL_ITEMS:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    if-ne v1, v2, :cond_1

    .line 307
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->stubAiFlyAllItems:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rl_main_ai_fly_items:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    .line 310
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_take_land_off:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    .line 311
    sget v1, Lcom/fimi/app/x8s/R$id;->sv_ai_items:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->svAiItems:Landroid/widget/ScrollView;

    .line 314
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_return_home:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiReturnHome:Landroid/widget/ImageView;

    .line 315
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_point_to_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiPointToPoint:Landroid/widget/ImageView;

    .line 316
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_rout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiRout:Landroid/widget/ImageView;

    .line 317
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_auto_photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAutoPhoto:Landroid/widget/ImageView;

    .line 318
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollow:Landroid/widget/ImageView;

    .line 319
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_to_hostpot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollowToHostpot:Landroid/widget/ImageView;

    .line 320
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_surround_to_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSurroundToPoint:Landroid/widget/ImageView;

    .line 322
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_tripod:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTtipod:Landroid/widget/ImageView;

    .line 323
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_aerial_photograph:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAerialPhotograph:Landroid/widget/ImageView;

    .line 324
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_fixed_wing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFixedwing:Landroid/widget/ImageView;

    .line 325
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_heading_lock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiHeadingLock:Landroid/widget/ImageView;

    .line 326
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_screw:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSrcew:Landroid/widget/ImageView;

    .line 327
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_fly_gravitation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgFlyGravitation:Landroid/widget/ImageView;

    .line 328
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_sar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSar:Landroid/widget/ImageView;

    .line 330
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_take_land_off:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiTakeLandOff:Landroid/widget/TextView;

    .line 331
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_return_home:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiReturnHome:Landroid/widget/TextView;

    .line 333
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_rout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiRout:Landroid/widget/TextView;

    .line 334
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_follow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiFollow:Landroid/widget/TextView;

    .line 335
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_surround_to_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiSurroundToPoint:Landroid/widget/TextView;

    .line 337
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_point_to_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiPointToPoint:Landroid/widget/TextView;

    .line 338
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_auto_photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiAutoPhoto:Landroid/widget/TextView;

    .line 339
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_screw:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiScrew:Landroid/widget/TextView;

    .line 340
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_fly_gravitation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiGravitation:Landroid/widget/TextView;

    .line 342
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_sar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiSar:Landroid/widget/TextView;

    .line 343
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_aerial_photograph:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAerialShot:Landroid/widget/TextView;

    .line 344
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_tripod:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvTripod:Landroid/widget/TextView;

    .line 346
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_heading_lock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvHeadLock:Landroid/widget/TextView;

    .line 347
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_fixed_wing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvFixedwing:Landroid/widget/TextView;

    .line 350
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiReturnHome:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiPointToPoint:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAutoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiRout:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollow:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollowToHostpot:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSurroundToPoint:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgFlyGravitation:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTtipod:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAerialPhotograph:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFixedwing:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiHeadingLock:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSrcew:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSar:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isConect:Z

    if-eqz v1, :cond_2

    .line 370
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isLowpower:Z

    invoke-virtual {p0, v1, v2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setAllEnabled()V

    goto :goto_0
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 149
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_rl_main_ai_fly:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFly:Landroid/view/View;

    .line 150
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_rl_main_ai_fly_blank:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->aiFlyBlank:Landroid/view/View;

    .line 151
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_main_ai_fly_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->contentView:Landroid/view/View;

    .line 152
    sget v0, Lcom/fimi/app/x8s/R$id;->stub_ai_fly_items:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->stubAiFlyAllItems:Landroid/view/ViewStub;

    .line 154
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_main_ai_confirm_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    .line 155
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiPoint2PointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;

    .line 156
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiSurroundToPointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;

    .line 157
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLinesConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;

    .line 158
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiAutoPhotoConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;

    .line 159
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiFollowConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;

    .line 160
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiTakeoffConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;

    .line 161
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLandingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;

    .line 162
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiReturnConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;

    .line 163
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAerialPhotographConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAerialPhotographConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiAerialPhotographConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAerialPhotographConfirmModule;

    .line 164
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiFixedwingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;

    .line 165
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiHeadingLockConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;

    .line 166
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTtipodConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTtipodConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiTtipodConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTtipodConfirmModule;

    .line 167
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiScrewComnfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewConfirmModule;

    .line 168
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSarConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSarConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiSarConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSarConfirmModule;

    .line 169
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiGravitationConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;

    .line 170
    return-void
.end method

.method public onAerialPhotographConfirmOkClick()V
    .locals 0

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setAerailShotType()V

    .line 568
    return-void
.end method

.method public onAutoPhotoConfirmOk(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setAiVcOpenForAutoPhoto(I)V

    .line 897
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 265
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_take_land_off:I

    if-ne v0, v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openTakeOffOrLandingUi()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_return_home:I

    if-ne v0, v1, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openReturnUi()V

    goto :goto_0

    .line 269
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_point_to_point:I

    if-ne v0, v1, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openPoint2PointConfirmContent()V

    goto :goto_0

    .line 271
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_rout:I

    if-ne v0, v1, :cond_4

    .line 272
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openLinesUi()V

    goto :goto_0

    .line 273
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_auto_photo:I

    if-ne v0, v1, :cond_5

    .line 274
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openAutoPhotoUi()V

    goto :goto_0

    .line 275
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow:I

    if-ne v0, v1, :cond_6

    .line 276
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openAiFollowConfirmContent()V

    goto :goto_0

    .line 277
    :cond_6
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_to_hostpot:I

    if-eq v0, v1, :cond_0

    .line 279
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_surround_to_point:I

    if-ne v0, v1, :cond_7

    .line 280
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openSurroundPointUi()V

    goto :goto_0

    .line 281
    :cond_7
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rl_main_ai_fly_blank:I

    if-ne v0, v1, :cond_8

    .line 282
    invoke-virtual {p0, v2, v2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    goto :goto_0

    .line 283
    :cond_8
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_tripod:I

    if-ne v0, v1, :cond_9

    .line 284
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openAiTtipod()V

    goto :goto_0

    .line 285
    :cond_9
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_aerial_photograph:I

    if-ne v0, v1, :cond_a

    .line 286
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openAiAerialPhotograph()V

    goto :goto_0

    .line 287
    :cond_a
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_fixed_wing:I

    if-ne v0, v1, :cond_b

    .line 288
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openAiFixedwing()V

    goto :goto_0

    .line 289
    :cond_b
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_heading_lock:I

    if-ne v0, v1, :cond_c

    .line 290
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openAiHeadingLock()V

    goto :goto_0

    .line 291
    :cond_c
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_screw:I

    if-ne v0, v1, :cond_d

    .line 292
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openAiScrew()V

    goto :goto_0

    .line 293
    :cond_d
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_sar:I

    if-ne v0, v1, :cond_e

    .line 294
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openAiSar()V

    goto :goto_0

    .line 295
    :cond_e
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_fly_gravitation:I

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public onCloseConfirmUi()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 886
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 887
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->ALL_ITEMS:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 888
    return-void
.end method

.method public onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V
    .locals 10
    .param p1, "fcHeart"    # Lcom/fimi/x8sdk/dataparser/AutoFcHeart;
    .param p2, "isLowPow"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 581
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    .line 582
    .local v2, "state":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 584
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiTakeLandOff:Landroid/widget/TextView;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_land_off:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 585
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_landing:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 586
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiReturnHome:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 589
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiReturnHome:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "b":Z
    const/4 v3, 0x0

    .line 595
    .local v3, "takeoffLanding":Z
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->isPilotModePrimary()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 596
    const/4 v0, 0x0

    .line 597
    const/4 v3, 0x1

    .line 615
    .end local v3    # "takeoffLanding":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 616
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiPointToPoint:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 617
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiRout:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 618
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAutoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 619
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollow:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 620
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollowToHostpot:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 621
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSurroundToPoint:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 622
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgFlyGravitation:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 623
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTtipod:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 624
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAerialPhotograph:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 625
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFixedwing:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 626
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiHeadingLock:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 627
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSrcew:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 628
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSar:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 631
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiTakeLandOff:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 632
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiRout:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 633
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiFollow:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 634
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiSurroundToPoint:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 635
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiPointToPoint:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 636
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiAutoPhoto:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 637
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiScrew:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 638
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiGravitation:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 639
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiSar:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 640
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAerialShot:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 641
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvTripod:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 642
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvHeadLock:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 643
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvFixedwing:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 644
    invoke-virtual {p0, v0, p2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onFcHeartChange(ZZ)V

    .line 647
    .end local v0    # "b":Z
    :cond_1
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 648
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->isCanFly()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 649
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiTakeLandOff:Landroid/widget/TextView;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_take_off:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 650
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_takeoff_selector:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 651
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlType()I

    move-result v1

    .line 652
    .local v1, "ctrtype":I
    const/4 v3, 0x0

    .line 653
    .restart local v3    # "takeoffLanding":Z
    if-ne v1, v7, :cond_9

    .line 654
    const/4 v3, 0x0

    .line 660
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 661
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiTakeLandOff:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 664
    invoke-virtual {p0, v7}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->defalutNextUi(Z)V

    .line 669
    .end local v1    # "ctrtype":I
    .end local v3    # "takeoffLanding":Z
    :goto_2
    invoke-virtual {p0, v6, p2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onFcHeartChange(ZZ)V

    .line 670
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiReturnHome:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 671
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiReturnHome:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 673
    const/4 v3, 0x0

    .line 674
    .restart local v3    # "takeoffLanding":Z
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlType()I

    move-result v1

    .line 675
    .restart local v1    # "ctrtype":I
    if-ne v1, v7, :cond_c

    .line 676
    const/4 v3, 0x0

    .line 682
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiRout:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 683
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiPointToPoint:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 684
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAutoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 685
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollow:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 686
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollowToHostpot:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 687
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSurroundToPoint:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 688
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgFlyGravitation:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 689
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTtipod:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 690
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAerialPhotograph:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 691
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFixedwing:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 692
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiHeadingLock:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 693
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSrcew:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 694
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSar:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 696
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiRout:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 697
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiFollow:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 698
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiSurroundToPoint:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 699
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiPointToPoint:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 700
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiAutoPhoto:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 701
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiScrew:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 702
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiGravitation:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 703
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiSar:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 704
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAerialShot:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 705
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvTripod:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 706
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvHeadLock:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 707
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvFixedwing:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 710
    .end local v1    # "ctrtype":I
    .end local v3    # "takeoffLanding":Z
    :cond_4
    return-void

    .line 599
    .restart local v0    # "b":Z
    .restart local v3    # "takeoffLanding":Z
    :cond_5
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlType()I

    move-result v1

    .line 600
    .restart local v1    # "ctrtype":I
    if-ne v1, v7, :cond_6

    .line 601
    const/4 v0, 0x0

    .line 602
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 603
    :cond_6
    if-ne v1, v9, :cond_7

    .line 604
    const/4 v0, 0x0

    .line 605
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 606
    :cond_7
    if-ne v1, v8, :cond_0

    .line 607
    iget-boolean v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isAiRunning:Z

    if-eqz v4, :cond_8

    .line 608
    const/4 v0, 0x0

    move v3, v0

    .local v3, "takeoffLanding":I
    goto/16 :goto_0

    .line 610
    .local v3, "takeoffLanding":Z
    :cond_8
    const/4 v0, 0x1

    move v3, v0

    .local v3, "takeoffLanding":I
    goto/16 :goto_0

    .line 655
    .end local v0    # "b":Z
    .local v3, "takeoffLanding":Z
    :cond_9
    if-ne v1, v9, :cond_a

    .line 656
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 657
    :cond_a
    if-ne v1, v8, :cond_2

    .line 658
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 666
    .end local v1    # "ctrtype":I
    .end local v3    # "takeoffLanding":Z
    :cond_b
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiTakeLandOff:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 667
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 677
    .restart local v1    # "ctrtype":I
    .restart local v3    # "takeoffLanding":Z
    :cond_c
    if-ne v1, v9, :cond_d

    .line 678
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 679
    :cond_d
    if-ne v1, v8, :cond_3

    .line 680
    const/4 v3, 0x1

    goto/16 :goto_3
.end method

.method public onFcHeartChange(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPow"    # Z

    .prologue
    .line 721
    sget-object v0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$12;->$SwitchMap$com$fimi$app$x8s$enums$X8AiFlyMenuEnum:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 753
    :goto_0
    return-void

    .line 723
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLinesConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 726
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiTakeoffConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 729
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLandingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 732
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiReturnConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 735
    :pswitch_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiFollowConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 738
    :pswitch_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiPoint2PointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 741
    :pswitch_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiSurroundToPointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 744
    :pswitch_7
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiAutoPhotoConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 747
    :pswitch_8
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiFixedwingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 750
    :pswitch_9
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiGravitationConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;->setFcHeart(ZZ)V

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public onFixedwingConfirmOkClick()V
    .locals 0

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setFixedwingType()V

    .line 492
    return-void
.end method

.method public onFollowConfirmOkClick(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setAiVcOpen(I)V

    .line 785
    return-void
.end method

.method public onGravitationConfirmOkClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 834
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;->onAiGravitationConfimClick()V

    .line 835
    invoke-virtual {p0, v1, v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    .line 836
    return-void
.end method

.method public onHeadingLockConfirmOkClick()V
    .locals 0

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setHeadlockType()V

    .line 474
    return-void
.end method

.method public onLinesConfirmOkByHistory(JI)V
    .locals 3
    .param p1, "lineId"    # J
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 921
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;->onAiLineConfirmClickByHistory(IJI)V

    .line 922
    invoke-virtual {p0, v2, v2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    .line 923
    return-void
.end method

.method public onLinesConfirmOkClick(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 916
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;->onAiLineConfirmClick(I)V

    .line 917
    invoke-virtual {p0, v1, v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    .line 918
    return-void
.end method

.method public onPoint2PointConfirmOkClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;->onAiPoint2PointConfirmClick()V

    .line 804
    invoke-virtual {p0, v1, v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    .line 805
    return-void
.end method

.method public onRetureHomeClick()V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$7;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiRetureHome(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 937
    return-void
.end method

.method public onSarConfirmOkClick()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;->onAiSarConfimClick()V

    .line 549
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    .line 550
    return-void
.end method

.method public onScrewConfirmOkClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;->onAiScrewConfimCick()V

    .line 528
    invoke-virtual {p0, v1, v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    .line 529
    return-void
.end method

.method public onSurroundPointConfirmClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 891
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;->onAiSurroundPointConfirmClick()V

    .line 892
    invoke-virtual {p0, v1, v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    .line 893
    return-void
.end method

.method public onTakeOffOrLandingClick()V
    .locals 3

    .prologue
    .line 756
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    if-eqz v1, :cond_0

    .line 757
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 758
    .local v0, "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$3;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$3;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/controller/FcManager;->land(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 781
    .end local v0    # "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    :cond_0
    :goto_0
    return-void

    .line 770
    .restart local v0    # "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$4;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$4;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/controller/FcManager;->takeOff(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method

.method public onTtipodConfirmOkClick()V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setTripodType()V

    .line 509
    return-void
.end method

.method public openAiAerialPhotograph()V
    .locals 3

    .prologue
    .line 554
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAerialPhotographCourse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiAerialPhotographConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAerialPhotographConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAerialPhotographConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 558
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiAerialPhotographConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAerialPhotographConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAerialPhotographConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 559
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_AERIALPHOTOGRAPH:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onAerialPhotographConfirmOkClick()V

    goto :goto_0
.end method

.method public openAiFixedwing()V
    .locals 3

    .prologue
    .line 477
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFixedwingCourse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiFixedwingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 481
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiFixedwingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 482
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FIXEDWING:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onFixedwingConfirmOkClick()V

    goto :goto_0
.end method

.method public openAiFollowConfirmContent()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiFollowConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiFollowConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFollowConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 445
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FOLLOW_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 447
    return-void
.end method

.method public openAiHeadingLock()V
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiHeadingLockConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiHeadingLockConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 469
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_HEADINGLOCK:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 470
    return-void
.end method

.method public openAiSar()V
    .locals 3

    .prologue
    .line 535
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiSarConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSarConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSarConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiSarConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSarConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSarConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 540
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_SAR:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onSarConfirmOkClick()V

    goto :goto_0
.end method

.method public openAiScrew()V
    .locals 3

    .prologue
    .line 514
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiScrew()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiScrewComnfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 518
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiScrewComnfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 519
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_SCREW:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onScrewConfirmOkClick()V

    goto :goto_0
.end method

.method public openAiTtipod()V
    .locals 3

    .prologue
    .line 495
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiTripodCourse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiTtipodConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTtipodConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTtipodConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 499
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiTtipodConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTtipodConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTtipodConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 500
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_TTIPOD:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onTtipodConfirmOkClick()V

    goto :goto_0
.end method

.method public openAutoPhotoUi()V
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiAutoPhotoConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 851
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiAutoPhotoConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 852
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_AUTO_PHOTO_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 854
    return-void
.end method

.method public openGravitationUi()V
    .locals 3

    .prologue
    .line 822
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFlyGravitation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiGravitationConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 826
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiGravitationConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 827
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FLY_GRAVITATION:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 831
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onGravitationConfirmOkClick()V

    goto :goto_0
.end method

.method public openLandingUi()V
    .locals 3

    .prologue
    .line 866
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLandingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 869
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLandingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLandingConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 870
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_LANDING:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 872
    return-void
.end method

.method public openLinesUi()V
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLinesConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 843
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiLinesConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 844
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_LINE_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 845
    return-void
.end method

.method public openPoint2PointConfirmContent()V
    .locals 3

    .prologue
    .line 451
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiP2PCourse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiPoint2PointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 455
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiPoint2PointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 456
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_POINT2POINT_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onPoint2PointConfirmOkClick()V

    goto :goto_0
.end method

.method public openReturnUi()V
    .locals 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiReturnConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 878
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiReturnConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 879
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_RETURN:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 881
    return-void
.end method

.method public openSurroundPointUi()V
    .locals 3

    .prologue
    .line 808
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSurroundCourse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiSurroundToPointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 812
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiSurroundToPointConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 813
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_SURROUNDPOINT_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onSurroundPointConfirmClick()V

    goto :goto_0
.end method

.method public openTakeOffOrLandingUi()V
    .locals 2

    .prologue
    .line 572
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 573
    .local v0, "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openLandingUi()V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->openTakeoffUi()V

    goto :goto_0
.end method

.method public openTakeoffUi()V
    .locals 3

    .prologue
    .line 857
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFlyItems:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiTakeoffConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->confirmContent:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 860
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiTakeoffConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiTakeoffConfirmModule;->setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 861
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_TAKE_OFF:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 863
    return-void
.end method

.method public setAerailShotType()V
    .locals 3

    .prologue
    .line 996
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x1

    new-instance v2, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$11;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$11;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setEnableAerailShot(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1008
    return-void
.end method

.method public setAiRunning(Z)V
    .locals 0
    .param p1, "aiRunning"    # Z

    .prologue
    .line 1012
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isAiRunning:Z

    .line 1013
    return-void
.end method

.method public setAiVcOpen(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 788
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$5;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$5;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;I)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcOpen(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 800
    return-void
.end method

.method public setAiVcOpenForAutoPhoto(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 900
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$6;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$6;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;I)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcOpen(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 912
    return-void
.end method

.method public setAllEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_takeoff_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiReturnHome:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiPointToPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiRout:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAutoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFollowToHostpot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSurroundToPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgFlyGravitation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiTtipod:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiAerialPhotograph:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiFixedwing:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiHeadingLock:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSrcew:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->imgAiSar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiTakeLandOff:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiReturnHome:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiRout:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiFollow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiSurroundToPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiPointToPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiAutoPhoto:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiScrew:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiGravitation:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAiSar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvAerialShot:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvTripod:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvHeadLock:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->tvFixedwing:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 219
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->defalutNextUi(Z)V

    .line 220
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p2, "mFcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 302
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 303
    return-void
.end method

.method public setFixedwingType()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$8;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setEnableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 964
    return-void
.end method

.method public setHeadlockType()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$9;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setEnableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 979
    return-void
.end method

.method public setTripodType()V
    .locals 3

    .prologue
    .line 981
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x1

    new-instance v2, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$10;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$10;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setEnableTripod(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 993
    return-void
.end method

.method public setX8AiFlyListener(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;)V
    .locals 0
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    .prologue
    .line 143
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    .line 144
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 145
    return-void
.end method

.method public showAiUi()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 405
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->getCameraSetting(Z)V

    .line 406
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->getDroneState()V

    .line 407
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->rlAiFly:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->aiFlyBlank:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 409
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->initAllItems()V

    .line 410
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow:Z

    if-nez v1, :cond_0

    .line 411
    const-string/jumbo v1, "zdy"

    const-string v2, "showAiUi..........."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iput-boolean v7, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow:Z

    .line 413
    iget v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->width:I

    if-nez v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->contentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 415
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->contentView:Landroid/view/View;

    new-instance v2, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$2;-><init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->contentView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->width:I

    int-to-float v4, v4

    aput v4, v3, v5

    aput v6, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 432
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 433
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 2
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_RETURN:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    if-ne v0, v1, :cond_1

    .line 941
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiReturnConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_HEADINGLOCK:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    if-ne v0, v1, :cond_2

    .line 943
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiHeadingLockConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    goto :goto_0

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->menuState:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FIXEDWING:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    if-ne v0, v1, :cond_0

    .line 945
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->mX8AiFixedwingConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiFixedwingConfirmModule;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    goto :goto_0
.end method
