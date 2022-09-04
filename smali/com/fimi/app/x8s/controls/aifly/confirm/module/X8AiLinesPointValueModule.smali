.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiLinesPointValueModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;ILcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "type"    # I
    .param p4, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p5, "mapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .param p6, "controller"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 19
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;-><init>(Landroid/app/Activity;Landroid/view/View;ILcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    .line 20
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 1
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setFcHeart(ZZ)V

    .line 26
    return-void
.end method
