.class public Lcom/fimi/app/x8s/controls/X8MapVideoController;
.super Ljava/lang/Object;
.source "X8MapVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/interfaces/IControllers;
.implements Lcom/fimi/kernel/connect/session/VideodDataListener;
.implements Lcom/fimi/x8sdk/listener/NoFlyLinstener;


# static fields
.field public static outputStream:Ljava/io/FileOutputStream;


# instance fields
.field private adjustController:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

.field private drawNoFlightZoneCount:I

.field private fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

.field private h:I

.field private isPushDataToPlayer:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

.field private marginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private oldh:I

.field private oldw:I

.field private rlFullScreen:Landroid/widget/RelativeLayout;

.field private rlShotScreen:Landroid/widget/RelativeLayout;

.field private rlSmallScreen:Landroid/widget/RelativeLayout;

.field private rlSwitchScreen:Landroid/widget/RelativeLayout;

.field private tvVedioFrame:Landroid/widget/TextView;

.field private videoManager:Lcom/fimi/x8sdk/controller/VideoManager;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mActivity:Landroid/app/Activity;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    if-eq v0, v1, :cond_0

    .line 91
    invoke-static {}, Lcom/fimi/kernel/Constants;->isFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setContext(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->initViews(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->initActions()V

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setUpMap()V

    .line 103
    return-void

    .line 94
    :cond_1
    new-instance v0, Lcom/fimi/app/x8s/map/GglMap;

    invoke-direct {v0}, Lcom/fimi/app/x8s/map/GglMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/X8MapVideoController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->tvVedioFrame:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/X8MapVideoController;)Lcom/fimi/app/x8s/widget/X8MapVideoCardView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    return-object v0
.end method

.method private adjustFullScreenFimiVideoLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 429
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 430
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->isPad(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 432
    .local v3, "height":I
    int-to-float v5, v3

    invoke-static {v2}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->getRootHeightAndWidth(Landroid/util/DisplayMetrics;)[F

    move-result-object v6

    aget v6, v6, v8

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 433
    .local v0, "diffHeight":I
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    div-int/lit8 v6, v0, 0x2

    div-int/lit8 v7, v0, 0x2

    invoke-virtual {v5, v8, v6, v8, v7}, Lcom/fimi/app/x8s/media/FimiH264Video;->setPadding(IIII)V

    .line 445
    .end local v0    # "diffHeight":I
    .end local v3    # "height":I
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-static {v2}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->isHWProportion(Landroid/util/DisplayMetrics;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 436
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 437
    .local v4, "width":I
    int-to-float v5, v4

    invoke-static {v2}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->getRootHeightAndWidth(Landroid/util/DisplayMetrics;)[F

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 438
    .local v1, "diffWidth":I
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    div-int/lit8 v6, v1, 0x2

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v5, v6, v8, v7, v8}, Lcom/fimi/app/x8s/media/FimiH264Video;->setPadding(IIII)V

    goto :goto_0

    .line 440
    .end local v1    # "diffWidth":I
    .end local v4    # "width":I
    :cond_1
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 441
    .restart local v3    # "height":I
    int-to-float v5, v3

    invoke-static {v2}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->getRootHeightAndWidth(Landroid/util/DisplayMetrics;)[F

    move-result-object v6

    aget v6, v6, v8

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 442
    .restart local v0    # "diffHeight":I
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    div-int/lit8 v6, v0, 0x2

    div-int/lit8 v7, v0, 0x2

    invoke-virtual {v5, v8, v6, v8, v7}, Lcom/fimi/app/x8s/media/FimiH264Video;->setPadding(IIII)V

    goto :goto_0
.end method

.method private adjustSmallScreenFimiVideoLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->setPadding(IIII)V

    .line 449
    return-void
.end method


# virtual methods
.method public addHome(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setHomeLocation(DD)V

    .line 120
    :cond_0
    return-void
.end method

.method public changeCamera()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    instance-of v0, v0, Lcom/fimi/app/x8s/map/GglMap;

    if-eqz v0, :cond_0

    .line 220
    :cond_0
    return-void
.end method

.method public clearShotBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSwitchScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlShotScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->drawNoFlightZoneCount:I

    .line 135
    return-void
.end method

.method public defaultVal()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->defaultMapValue()V

    .line 143
    :cond_0
    return-void
.end method

.method public disShowSmall()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->disShowSmall()V

    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSwitchScreen:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 281
    return-void
.end method

.method public drawNoFlightZone(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;)V
    .locals 2
    .param p1, "flyNormal"    # Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->clearNoFlightZone()V

    .line 252
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getPolygonShape()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->clearNoFlightZone()V

    .line 271
    :goto_0
    return-void

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    sget-object v1, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->CANDY:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->drawNoFlightZone(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    sget-object v1, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->CIRCLE:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->drawNoFlightZone(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;)V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    sget-object v1, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->CIRCLE:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->drawNoFlightZone(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;)V

    goto :goto_0

    .line 263
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    sget-object v1, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->IRREGULAR:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->drawNoFlightZone(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public fpvShot(Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/FimiH264Video;->fpvShot(Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;)V

    .line 403
    return-void
.end method

.method public getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    return-object v0
.end method

.method public getVideoView()Lcom/fimi/app/x8s/media/FimiH264Video;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    return-object v0
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSwitchScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerNoFlyListener(Lcom/fimi/x8sdk/listener/NoFlyLinstener;)V

    .line 125
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 163
    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    invoke-direct {v1, p1}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->adjustController:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    .line 164
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_switchscreen:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSwitchScreen:Landroid/widget/RelativeLayout;

    .line 165
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_fullscreen:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlFullScreen:Landroid/widget/RelativeLayout;

    .line 166
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_smallscreen:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSmallScreen:Landroid/widget/RelativeLayout;

    .line 167
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_fullscreen_shot:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlShotScreen:Landroid/widget/RelativeLayout;

    .line 168
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSmallScreen:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    sget v1, Lcom/fimi/app/x8s/R$id;->cv_map_video:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    .line 174
    new-instance v1, Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fimi/app/x8s/media/FimiH264Video;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    .line 175
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_vedio_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->tvVedioFrame:Landroid/widget/TextView;

    .line 176
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    new-instance v2, Lcom/fimi/app/x8s/controls/X8MapVideoController$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController$1;-><init>(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/media/FimiH264Video;->setmIFrameDataListener(Lcom/fimi/app/x8s/media/IFrameDataListener;)V

    .line 185
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSmallScreen:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getMapView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlFullScreen:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 189
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->marginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    :goto_0
    new-instance v1, Lcom/fimi/x8sdk/controller/VideoManager;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/VideoManager;-><init>(Lcom/fimi/kernel/connect/session/VideodDataListener;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->videoManager:Lcom/fimi/x8sdk/controller/VideoManager;

    .line 199
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zdy1.h264"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/fimi/app/x8s/controls/X8MapVideoController;->outputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->setSmallViewListener()V

    .line 209
    return-void

    .line 194
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->marginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public isFullVideo()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->isFullVideo()Z

    move-result v0

    return v0
.end method

.method public isPushDataToPlayer()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 225
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_switchscreen:I

    if-ne v0, v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchMapVideo()V

    .line 228
    :cond_0
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isPushDataToPlayer:Z

    .line 379
    return-void
.end method

.method public onRawdataCallBack([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isPushDataToPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/FimiH264Video;->onRawdataCallBack([B)V

    .line 296
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isPushDataToPlayer:Z

    .line 374
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->adjustFullScreenFimiVideoLayout()V

    .line 375
    return-void
.end method

.method public openUi()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public resetShow()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->resetShow()V

    .line 285
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSwitchScreen:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 286
    return-void
.end method

.method public setFpvShot(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "fpvShot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlShotScreen:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSwitchScreen:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->adjustController:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->adjustController:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->listener:Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;

    .line 246
    return-void
.end method

.method public setMapShot(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "mapShot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSwitchScreen:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlShotScreen:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSmallViewListener()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSwitchScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MapVideoController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController$2;-><init>(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 425
    return-void
.end method

.method public setUpMap()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setUpMap()V

    .line 113
    :cond_0
    return-void
.end method

.method public setX8GestureListener(Lcom/fimi/app/x8s/interfaces/IX8GestureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/FimiH264Video;->getX8AiTrackContainterView()Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->setX8GestureListener(Lcom/fimi/app/x8s/interfaces/IX8GestureListener;)V

    .line 371
    return-void
.end method

.method public showGridLine(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/FimiH264Video;->showGridLine(I)V

    .line 328
    return-void
.end method

.method public showNoFly(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;)V
    .locals 2
    .param p1, "flyNormal"    # Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;

    .prologue
    .line 319
    iget v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->drawNoFlightZoneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->drawNoFlightZoneCount:I

    .line 320
    iget v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->drawNoFlightZoneCount:I

    rem-int/lit8 v0, v0, 0x13

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->drawNoFlightZone(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;)V

    .line 324
    :cond_0
    return-void
.end method

.method public showVideoBg(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fimiVideoView:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/FimiH264Video;->showVideoBg(Z)V

    .line 367
    return-void
.end method

.method public snapshot(Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->snapshot(Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;)V

    .line 386
    return-void
.end method

.method public switchByAiLineMap()V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->adjustSmallScreenFimiVideoLayout()V

    .line 339
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrderForPoint2Point()V

    .line 340
    return-void
.end method

.method public switchByAiLineVideo()V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->adjustFullScreenFimiVideoLayout()V

    .line 344
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrderForAiLineVideo()V

    .line 345
    return-void
.end method

.method public switchByPoint2PointMap()V
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->adjustSmallScreenFimiVideoLayout()V

    .line 333
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrderForPoint2Point()V

    .line 334
    return-void
.end method

.method public switchBySurroundMap()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrderForAiLineVideo()V

    .line 349
    return-void
.end method

.method public switchDrawingOrderForAiFollow()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrderForAiFollow()V

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->rlSwitchScreen:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 276
    return-void
.end method

.method public switchDrawingOrderForGimbal()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrderForGimbal()V

    .line 359
    return-void
.end method

.method public switchMapVideo()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->listener:Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->isFullVideo()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;->switchMapVideo(Z)V

    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->isFullVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->adjustFullScreenFimiVideoLayout()V

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mapVideoCardView:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController;->mFimiMap:Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getMapView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrder(Landroid/view/View;)V

    .line 242
    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->adjustSmallScreenFimiVideoLayout()V

    goto :goto_0
.end method

.method public writeData([B)V
    .locals 9
    .param p1, "cmd"    # [B

    .prologue
    .line 300
    :try_start_0
    array-length v3, p1

    .line 306
    .local v3, "len":I
    const/16 v6, 0xe

    new-array v0, v6, [B

    .line 307
    .local v0, "bytes":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    invoke-static {p1, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    const/4 v6, 0x2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int v5, v6, v7

    .line 309
    .local v5, "seq":I
    const/4 v6, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x5

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x6

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x7

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 310
    .local v4, "pts_cur":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pts_cur="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "hex":Ljava/lang/String;
    sget-object v6, Lcom/fimi/app/x8s/controls/X8MapVideoController;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v0    # "bytes":[B
    .end local v2    # "hex":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v4    # "pts_cur":I
    .end local v5    # "seq":I
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
