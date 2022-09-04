.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;
.super Ljava/lang/Object;
.source "X8AiAerialPhotographNextUi.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;


# instance fields
.field private rootView:Landroid/view/View;

.field private sbBraking:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

.field private sbYaw:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

.field private tvBrakingValue:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvYawValue:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->rootView:Landroid/view/View;

    .line 26
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_aerail_graph_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->tvTitle:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_braking_sensity_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->tvBrakingValue:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_yaw_sensity_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->tvYawValue:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_braking:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->sbBraking:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    .line 30
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_yaw:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->sbYaw:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->sbBraking:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->setListener(Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;)V

    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->sbYaw:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->setListener(Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getBrakingSensity()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->sbBraking:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getYawSensity()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->sbYaw:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public isSaveData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSeekValueSet(II)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "value"    # I

    .prologue
    .line 41
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_braking:I

    if-ne p1, v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->tvBrakingValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_yaw:I

    if-ne p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->tvYawValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSensity()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->sbBraking:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcBrakeSenssity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->setProgress(I)V

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->sbYaw:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcYAWSenssity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->setProgress(I)V

    .line 52
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->type:I

    .line 56
    return-void
.end method
