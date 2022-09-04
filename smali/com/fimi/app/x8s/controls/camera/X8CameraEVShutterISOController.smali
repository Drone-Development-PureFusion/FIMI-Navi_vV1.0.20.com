.class public Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8CameraEVShutterISOController.java"

# interfaces
.implements Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;
.implements Lcom/fimi/x8sdk/listener/JsonCallBackListener;
.implements Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TIME_INTERVAL:I

.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private curParam:Ljava/lang/String;

.field private curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

.field private final defScale:Ljava/lang/String;

.field private final defaultIso:Ljava/lang/String;

.field private evView:Landroid/widget/RelativeLayout;

.field private ev_add_btn:Landroid/widget/TextView;

.field private ev_reduct_btn:Landroid/widget/TextView;

.field private hasInit:Z

.field private isOkay:Z

.field private isoAdatper:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

.field private isoOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isoRecycler:Landroid/support/v7/widget/RecyclerView;

.field private isoView:Landroid/widget/RelativeLayout;

.field private iso_index:I

.field private layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mContext:Landroid/content/Context;

.field private mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

.field private paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

.field private scaleValue:Ljava/lang/String;

.field private shutterAdapter:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

.field private shutterLayout:Landroid/support/v7/widget/LinearLayoutManager;

.field private shutterOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shutterRecycler:Landroid/support/v7/widget/RecyclerView;

.field private shutterView:Landroid/widget/RelativeLayout;

.field private shutter_index:I

.field private tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private tokenEnable:Z

.field private tvEv:Landroid/widget/TextView;

.field private tvIso:Landroid/widget/TextView;

.field private tvShutter:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const v6, 0x106000d

    const/4 v5, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    .line 56
    const-string v0, "0.0"

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->defScale:Ljava/lang/String;

    .line 57
    const-string v0, "auto"

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->defaultIso:Ljava/lang/String;

    .line 58
    const-string v0, "0.0"

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    .line 60
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->hasInit:Z

    .line 62
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tokenEnable:Z

    .line 64
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->TIME_INTERVAL:I

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isOkay:Z

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$dimen;->camera_iso_divider:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v5, v3, v6}, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$array;->x8_iso_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoOptions:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoOptions:Ljava/util/List;

    const-string v3, "iso"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoAdatper:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoAdatper:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$dimen;->camera_shutter_divider:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v5, v3, v6}, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$array;->x8_shutter_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterOptions:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterOptions:Ljava/util/List;

    const-string v3, "shutter_time"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterAdapter:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterAdapter:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/app/x8s/widget/X8TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initPhotoModle(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initRecordModle(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/controller/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    return-object v0
.end method

.method private initPhotoModle(Z)V
    .locals 8
    .param p1, "isAuto"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    if-eqz p1, :cond_0

    .line 363
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tokenEnable:Z

    new-array v1, v4, [Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->evView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 364
    new-array v0, v7, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterView:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoView:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    aput-object v1, v0, v6

    invoke-direct {p0, v3, v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 374
    return-void

    .line 366
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->isDelayedPhotography()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterView:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoView:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->evView:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v7

    invoke-direct {p0, v3, v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tokenEnable:Z

    new-array v1, v7, [Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 370
    new-array v0, v4, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->evView:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v3

    invoke-direct {p0, v3, v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private initRecordModle(Z)V
    .locals 2
    .param p1, "isAuto"    # Z

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initPhotoModle(Z)V

    .line 383
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    return-void
.end method

.method private refreshISOView()V
    .locals 3

    .prologue
    .line 567
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v2, "iso"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoOptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->iso_index:I

    .line 569
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoAdatper:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->iso_index:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->upSelectIndex(I)V

    .line 570
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-interface {v1, v0}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->isoSetting(Ljava/lang/String;)V

    .line 574
    :cond_0
    return-void
.end method

.method private refreshISOView(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v1, "iso"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->refreshISOView()V

    .line 564
    return-void
.end method

.method private refreshShutterView()V
    .locals 3

    .prologue
    .line 587
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v2, "shutter_time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 588
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterOptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutter_index:I

    .line 589
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterAdapter:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutter_index:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->upSelectIndex(I)V

    .line 590
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-interface {v1, v0}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->shutterSetting(Ljava/lang/String;)V

    .line 594
    :cond_0
    return-void
.end method

.method private refreshShutterView(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v1, "shutter_time"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->refreshShutterView()V

    .line 584
    return-void
.end method

.method private varargs updateViewEnable(Z[Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "parent"    # [Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 393
    if-eqz p2, :cond_5

    array-length v4, p2

    if-lez v4, :cond_5

    .line 394
    array-length v6, p2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v0, p2, v4

    .line 395
    .local v0, "group":Landroid/view/ViewGroup;
    instance-of v7, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v7, :cond_2

    .line 396
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v7, :cond_0

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, v7, :cond_1

    .line 397
    :cond_0
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoAdatper:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    invoke-virtual {v7, p1}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->setEnable(Z)V

    .line 398
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterAdapter:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    invoke-virtual {v7, p1}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->setEnable(Z)V

    .line 394
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 403
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 405
    .local v3, "subView":Landroid/view/View;
    instance-of v7, v3, Lcom/fimi/app/x8s/widget/X8RulerView;

    if-eqz v7, :cond_3

    .line 406
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-virtual {v7, p1}, Lcom/fimi/app/x8s/widget/X8RulerView;->setEnable(Z)V

    .line 403
    .end local v3    # "subView":Landroid/view/View;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 408
    .restart local v3    # "subView":Landroid/view/View;
    :cond_3
    instance-of v7, v3, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    .line 409
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "subView":Landroid/view/View;
    aput-object v3, v7, v5

    invoke-direct {p0, p1, v7}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    goto :goto_2

    .line 412
    .restart local v3    # "subView":Landroid/view/View;
    :cond_4
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 416
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "j":I
    .end local v2    # "len":I
    .end local v3    # "subView":Landroid/view/View;
    :cond_5
    return-void
.end method


# virtual methods
.method public defaultVal()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v1, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$1;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 176
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->setRulerListener(Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;)V

    .line 177
    return-void
.end method

.method public initData(Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;)V
    .locals 9
    .param p1, "curParamsJson"    # Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 419
    if-eqz p1, :cond_5

    .line 420
    invoke-virtual {p1}, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->getParam()Ljava/util/List;

    move-result-object v2

    .line 421
    .local v2, "plist":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/jsonResult/CurParamsJson;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 422
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    .line 423
    .local v1, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAe_bias()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAe_bias()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 424
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAe_bias()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "ae_bias":Ljava/lang/String;
    const-string v5, "\\s+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "scaleArray":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 427
    array-length v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 428
    aget-object v5, v3, v7

    iput-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    .line 432
    :goto_1
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tvEv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_1
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    if-eqz v5, :cond_0

    .line 435
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, ""

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 436
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fimi/app/x8s/widget/X8RulerView;->setCurScaleValue(F)V

    goto :goto_0

    .line 430
    :cond_2
    aget-object v5, v3, v8

    iput-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    goto :goto_1

    .line 441
    .end local v0    # "ae_bias":Ljava/lang/String;
    .end local v3    # "scaleArray":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterOptions:Ljava/util/List;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getShutter_time()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 442
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterOptions:Ljava/util/List;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getShutter_time()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutter_index:I

    .line 443
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterAdapter:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget v6, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutter_index:I

    invoke-virtual {v5, v6}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->upSelectIndex(I)V

    goto :goto_0

    .line 446
    :cond_4
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoOptions:Ljava/util/List;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getIso()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoOptions:Ljava/util/List;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getIso()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->iso_index:I

    .line 448
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoAdatper:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget v6, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->iso_index:I

    invoke-virtual {v5, v6}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->upSelectIndex(I)V

    goto/16 :goto_0

    .line 454
    .end local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    .end local v2    # "plist":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/jsonResult/CurParamsJson;>;"
    :cond_5
    iput-boolean v7, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tokenEnable:Z

    .line 455
    sget-object v4, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v5, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v4, v5, :cond_8

    .line 456
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v4

    if-nez v4, :cond_7

    .line 457
    invoke-direct {p0, v7}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initPhotoModle(Z)V

    .line 468
    :cond_6
    :goto_2
    return-void

    .line 458
    :cond_7
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 459
    invoke-direct {p0, v8}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initPhotoModle(Z)V

    goto :goto_2

    .line 461
    :cond_8
    sget-object v4, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v5, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v4, v5, :cond_9

    sget-object v4, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v5, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v4, v5, :cond_6

    .line 462
    :cond_9
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v4

    if-nez v4, :cond_a

    .line 463
    invoke-direct {p0, v7}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initRecordModle(Z)V

    goto :goto_2

    .line 464
    :cond_a
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 465
    invoke-direct {p0, v8}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initRecordModle(Z)V

    goto :goto_2
.end method

.method public initViews(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    sget v0, Lcom/fimi/app/x8s/R$id;->camera_params_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->handleView:Landroid/view/View;

    .line 103
    sget v0, Lcom/fimi/app/x8s/R$id;->camera_tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 104
    sget v0, Lcom/fimi/app/x8s/R$id;->iso_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 105
    sget v0, Lcom/fimi/app/x8s/R$id;->shutter_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 106
    sget v0, Lcom/fimi/app/x8s/R$id;->rulerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8RulerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    .line 107
    sget v0, Lcom/fimi/app/x8s/R$id;->ev_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tvEv:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/fimi/app/x8s/R$id;->shutter_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterView:Landroid/widget/RelativeLayout;

    .line 109
    sget v0, Lcom/fimi/app/x8s/R$id;->iso_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tvIso:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/fimi/app/x8s/R$id;->shutter_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tvShutter:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/fimi/app/x8s/R$id;->iso_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoView:Landroid/widget/RelativeLayout;

    .line 112
    sget v0, Lcom/fimi/app/x8s/R$id;->ev_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->evView:Landroid/widget/RelativeLayout;

    .line 113
    sget v0, Lcom/fimi/app/x8s/R$id;->ev_add_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->ev_add_btn:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/fimi/app/x8s/R$id;->ev_reduce_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->ev_reduct_btn:Landroid/widget/TextView;

    .line 116
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 122
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterLayout:Landroid/support/v7/widget/LinearLayoutManager;

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterLayout:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterLayout:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->ev_reduct_btn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->ev_add_btn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 488
    .local v1, "i":I
    sget v3, Lcom/fimi/app/x8s/R$id;->ev_add_btn:I

    if-ne v1, v3, :cond_3

    .line 489
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 490
    const/4 v2, 0x0

    .local v2, "m":I
    :goto_0
    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 491
    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    aget-object v0, v3, v2

    .line 492
    .local v0, "curRuler":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 494
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    sget-object v4, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/widget/X8RulerView;->setCurScaleValue(F)V

    .line 495
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v3, v5

    const-string v5, "0.0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, " 0.0"

    :goto_1
    invoke-virtual {v4, v3}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraEV(Ljava/lang/String;)V

    .line 496
    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    .line 519
    .end local v0    # "curRuler":Ljava/lang/String;
    .end local v2    # "m":I
    :cond_0
    :goto_2
    return-void

    .line 495
    .restart local v0    # "curRuler":Ljava/lang/String;
    .restart local v2    # "m":I
    :cond_1
    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v3, v5

    goto :goto_1

    .line 490
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "curRuler":Ljava/lang/String;
    .end local v2    # "m":I
    :cond_3
    sget v3, Lcom/fimi/app/x8s/R$id;->ev_reduce_btn:I

    if-ne v1, v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 505
    const/4 v2, 0x0

    .restart local v2    # "m":I
    :goto_3
    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 506
    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    aget-object v0, v3, v2

    .line 507
    .restart local v0    # "curRuler":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 508
    if-lez v2, :cond_5

    .line 509
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    sget-object v4, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/widget/X8RulerView;->setCurScaleValue(F)V

    .line 510
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v3, v3, v5

    const-string v5, "0.0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " 0.0"

    :goto_4
    invoke-virtual {v4, v3}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraEV(Ljava/lang/String;)V

    .line 511
    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    goto :goto_2

    .line 510
    :cond_4
    sget-object v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v3, v3, v5

    goto :goto_4

    .line 505
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 531
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->onDroneConnected(Z)V

    .line 532
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isOkay:Z

    if-ne v0, p1, :cond_0

    .line 536
    :goto_0
    return-void

    .line 533
    :cond_0
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isOkay:Z

    .line 534
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tokenEnable:Z

    .line 535
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->evView:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoView:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterView:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onFail(IILjava/lang/String;)V
    .locals 0
    .param p1, "reval"    # I
    .param p2, "msgId"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 348
    return-void
.end method

.method public onJSONSuccess(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 236
    return-void
.end method

.method public onSuccess(Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;)V
    .locals 8
    .param p1, "rtJson"    # Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 242
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    .line 243
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getMsg_id()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6

    .line 344
    .end local p1    # "rtJson":Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
    :cond_1
    :goto_1
    return-void

    .line 245
    .restart local p1    # "rtJson":Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
    :pswitch_0
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alanqiu  ==========rtJson:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 246
    const-string v2, "iso"

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getParam()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->refreshISOView(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setIso(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    const-string v2, "shutter_time"

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getParam()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->refreshShutterView(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setShutter_time(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_3
    const-string v2, "ae_bias"

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getParam()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "ae_bias":Ljava/lang/String;
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "scaleArray":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 257
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 258
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    .line 262
    :goto_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tvEv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_4
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    invoke-virtual {v2, v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setAe_bias(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/widget/X8RulerView;->setCurScaleValue(F)V

    .line 269
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->evSetting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :cond_5
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    goto :goto_2

    .line 279
    .end local v0    # "ae_bias":Ljava/lang/String;
    .end local v1    # "scaleArray":[Ljava/lang/String;
    :cond_6
    instance-of v2, p1, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getMsg_id()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 281
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getParam()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iso"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    check-cast p1, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .end local p1    # "rtJson":Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
    invoke-virtual {p1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getOptions()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoOptions:Ljava/util/List;

    .line 283
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoAdatper:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoOptions:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->updateDatas(Ljava/util/List;)V

    .line 284
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoAdatper:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->iso_index:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->upSelectIndex(I)V

    goto/16 :goto_1

    .line 285
    .restart local p1    # "rtJson":Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
    :cond_7
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getParam()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shutter_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    check-cast p1, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .end local p1    # "rtJson":Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
    invoke-virtual {p1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getOptions()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterOptions:Ljava/util/List;

    .line 287
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterAdapter:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterOptions:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->updateDatas(Ljava/util/List;)V

    .line 288
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterAdapter:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutter_index:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->upSelectIndex(I)V

    goto/16 :goto_1

    .line 290
    .restart local p1    # "rtJson":Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
    :cond_8
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getMsg_id()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 291
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iso"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 292
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->refreshISOView()V

    .line 293
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v3, "iso"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 294
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v4, "iso"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setIso(Ljava/lang/String;)V

    .line 295
    :cond_9
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->handleView:Landroid/view/View;

    new-instance v3, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$3;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$3;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 304
    :cond_a
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shutter_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 305
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterOptions:Ljava/util/List;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v4, "shutter_time"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutter_index:I

    .line 306
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterAdapter:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutter_index:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->upSelectIndex(I)V

    .line 307
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v2, :cond_b

    .line 308
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v4, "shutter_time"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->shutterSetting(Ljava/lang/String;)V

    .line 310
    :cond_b
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v3, "shutter_time"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 311
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    const-string v4, "shutter_time"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setShutter_time(Ljava/lang/String;)V

    .line 313
    :cond_c
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->handleView:Landroid/view/View;

    new-instance v3, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 325
    :cond_d
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ae_bias"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tvEv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v2, :cond_e

    .line 328
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->evSetting(Ljava/lang/String;)V

    .line 330
    :cond_e
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setAe_bias(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->handleView:Landroid/view/View;

    new-instance v3, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$5;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$5;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public openUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 134
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 135
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->hasInit:Z

    if-nez v1, :cond_0

    .line 136
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->hasInit:Z

    .line 137
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraIsoOptions()V

    .line 138
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraShutterOptions()V

    .line 140
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getDe_control()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "deControl":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1, v3, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->upSelect(IZ)V

    .line 146
    :goto_0
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v1, v2, :cond_4

    .line 147
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v1

    if-nez v1, :cond_3

    .line 148
    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initPhotoModle(Z)V

    .line 159
    :cond_1
    :goto_1
    return-void

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1, v4, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->upSelect(IZ)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 150
    invoke-direct {p0, v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initPhotoModle(Z)V

    goto :goto_1

    .line 152
    :cond_4
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v1, v2, :cond_5

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v1, v2, :cond_1

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v1

    if-nez v1, :cond_6

    .line 154
    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initRecordModle(Z)V

    goto :goto_1

    .line 155
    :cond_6
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 156
    invoke-direct {p0, v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initRecordModle(Z)V

    goto :goto_1
.end method

.method public outTime()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public setCameraDeControl(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 180
    if-nez p1, :cond_1

    .line 181
    const-string v0, "auto"

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParam:Ljava/lang/String;

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParam:Ljava/lang/String;

    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;

    invoke-direct {v2, p0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;I)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraDeControl(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 219
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 183
    const-string v0, "manual"

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->curParam:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->registerJsonCallBackListener(Lcom/fimi/x8sdk/listener/JsonCallBackListener;)V

    goto :goto_0
.end method

.method public setCurModle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getDe_control()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "deControl":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8TabHost;->upSelect(IZ)V

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraIsoOptions()V

    .line 76
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraShutterOptions()V

    .line 77
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->tabHost:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1, v3, v3}, Lcom/fimi/app/x8s/widget/X8TabHost;->upSelect(IZ)V

    goto :goto_0
.end method

.method public setEvParamValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->rulerView:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8RulerView;->setCurScaleValue(F)V

    .line 549
    return-void
.end method

.method public setIOSParamValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->refreshISOView(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public setMainSetListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V
    .locals 0
    .param p1, "mainSetListener"    # Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .line 525
    return-void
.end method

.method public updateParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->paramMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "iso"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->isoRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraIsoParams(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_2
    const-string v0, "shutter_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->shutterRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraShutterParams(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateRuler(F)V
    .locals 3
    .param p1, "scaleValue"    # F

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    if-nez v0, :cond_0

    .line 481
    :goto_0
    return-void

    .line 473
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 474
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    .line 480
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraEV(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_ev_add:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    goto :goto_1

    .line 478
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->scaleValue:Ljava/lang/String;

    goto :goto_1
.end method
