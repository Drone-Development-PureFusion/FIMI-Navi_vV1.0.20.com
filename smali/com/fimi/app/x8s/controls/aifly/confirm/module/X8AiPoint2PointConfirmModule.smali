.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiPoint2PointConfirmModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointConfirmUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 17
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointConfirmUi;

    invoke-direct {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointConfirmUi;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointConfirmUi;

    .line 18
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 1
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointConfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointConfirmUi;->setFcHeart(ZZ)V

    .line 23
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 1
    .param p1, "mX8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointConfirmUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointConfirmUi;->setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 27
    return-void
.end method
