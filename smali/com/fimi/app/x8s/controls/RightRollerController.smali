.class public Lcom/fimi/app/x8s/controls/RightRollerController;
.super Ljava/lang/Object;
.source "RightRollerController.java"


# instance fields
.field aiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

.field cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field context:Landroid/content/Context;

.field evIndex:I

.field isoIndex:I

.field mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

.field rightRollerMoveListener:Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;

.field private x8EVOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x8IsoOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/controller/CameraManager;Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Landroid/content/Context;Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;)V
    .locals 2
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;
    .param p2, "aiTaskManager"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "mX8MainBottomParameterController"    # Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;
    .param p5, "rightRollerMoveListener"    # Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 33
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->aiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    .line 34
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->context:Landroid/content/Context;

    .line 35
    sget-object v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8EVOptions:Ljava/util/List;

    .line 37
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$array;->x8_iso_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8IsoOptions:Ljava/util/List;

    .line 38
    iput-object p4, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    .line 39
    iput-object p5, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->rightRollerMoveListener:Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;

    .line 41
    return-void
.end method

.method private setX8EVOptions(Z)V
    .locals 3
    .param p1, "isDown"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8EVOptions:Ljava/util/List;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->getEvText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/controls/RightRollerController;->getListIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    .line 96
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 99
    :cond_0
    if-eqz p1, :cond_3

    .line 100
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    .line 104
    :goto_1
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    if-gtz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    .line 107
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8EVOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8EVOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8EVOptions:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "0.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " 0.0"

    :goto_2
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraEV(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->rightRollerMoveListener:Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8EVOptions:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;->onEvSuccess(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8EVOptions:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateEvTextValue(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8EVOptions:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setAe_bias(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    goto :goto_1

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8EVOptions:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->evIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2
.end method

.method private setX8IOSOptions(Z)V
    .locals 3
    .param p1, "isDown"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8IsoOptions:Ljava/util/List;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->getISOText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/controls/RightRollerController;->getListIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    .line 66
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    if-eqz p1, :cond_3

    .line 70
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    .line 74
    :goto_1
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    if-gtz v0, :cond_1

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    .line 77
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8IsoOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8IsoOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8IsoOptions:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraIsoParams(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->rightRollerMoveListener:Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8IsoOptions:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;->onISOSuccess(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->x8IsoOptions:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setAe_bias(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->isoIndex:I

    goto :goto_1
.end method


# virtual methods
.method public changeRightRolloer(Lcom/fimi/x8sdk/dataparser/AckRightRoller;)V
    .locals 2
    .param p1, "rightRoller"    # Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->aiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->isInSARMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/RightRollerController;->aiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckRightRoller;->isMoveDown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->changeSarProceess(Z)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/RightRollerController;->isAutoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckRightRoller;->isMoveDown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/RightRollerController;->setX8EVOptions(Z)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckRightRoller;->isMoveDown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/RightRollerController;->setX8IOSOptions(Z)V

    goto :goto_0
.end method

.method public getListIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "x8EVOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 125
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 126
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    move v1, v0

    .line 131
    :cond_0
    return v1

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAutoMode()Z
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getDe_control()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "deControl":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "manual"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 119
    :goto_0
    return v1

    .line 120
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
