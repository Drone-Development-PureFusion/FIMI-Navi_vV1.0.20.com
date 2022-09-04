.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8MainAiFollowConfirmController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private blank:Landroid/view/View;

.field private currentModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteListener;

.field private mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

.field private mainLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->MAX_WIDTH:I

    return p1
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->mainLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->width:I

    return p1
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    .prologue
    .line 19
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->width:I

    return v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public closeAiUi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 108
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->blank:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->isShow:Z

    if-eqz v1, :cond_0

    .line 110
    const-string/jumbo v1, "zdy"

    const-string v2, "closeAiUi..........."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->isShow:Z

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 113
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 114
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 115
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->blank:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 40
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_main_ai_follow_confirm_main_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->mainLayout:Landroid/view/View;

    .line 41
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_main_ai_follow_confirm_main_layout_content_blank:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->blank:Landroid/view/View;

    .line 42
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_main_ai_follow_confirm_main_layout_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    .line 43
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->currentModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 60
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_main_ai_follow_confirm_main_layout_content_blank:I

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->closeAiUi()V

    .line 63
    :cond_0
    return-void
.end method

.method public openUi()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 68
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->mainLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->blank:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->currentModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 79
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->isShow:Z

    if-nez v1, :cond_0

    .line 80
    const-string/jumbo v1, "zdy"

    const-string v2, "showAiUi..........."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-boolean v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->isShow:Z

    .line 82
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->width:I

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 84
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->contentView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->width:I

    int-to-float v4, v4

    aput v4, v3, v5

    aput v6, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 101
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public setAcitivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "acitivity"    # Landroid/app/Activity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->activity:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method public setMapPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 1
    .param p1, "mapPoint"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;->setMapPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    .line 129
    return-void
.end method

.method public setPoint2PointExcuteListener(Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteListener;Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteListener;

    .line 133
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 135
    return-void
.end method
