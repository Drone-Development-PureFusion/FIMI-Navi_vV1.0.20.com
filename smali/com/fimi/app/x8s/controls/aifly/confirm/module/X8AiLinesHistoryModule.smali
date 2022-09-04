.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesHistoryModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiLinesHistoryModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;


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
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;

    invoke-direct {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesHistoryModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;

    .line 18
    return-void
.end method

.method public setController(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 1
    .param p1, "controller"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesHistoryModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->setController(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    .line 28
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 1
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesHistoryModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->setFcHeart(ZZ)V

    .line 23
    return-void
.end method
