.class public Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;
.super Ljava/lang/Object;
.source "X8ErrerCodeSpeakFlashManager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

.field private isSpeek:Z

.field private isStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

.field private seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

.field private speekId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fimi/app/x8s/controls/X8ErrorCodeController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCodeController"    # Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager$1;-><init>(Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    .line 40
    new-instance v0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->serious:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;-><init>(Landroid/content/Context;Lcom/fimi/app/x8s/controls/X8ErrorCodeController;Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    .line 41
    new-instance v0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->medium:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;-><init>(Landroid/content/Context;Lcom/fimi/app/x8s/controls/X8ErrorCodeController;Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->nextRun()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->nextRun()V

    .line 111
    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->disconnect()V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->disconnect()V

    .line 88
    iput-boolean v2, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isStart:Z

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->speekId:J

    .line 94
    iput-boolean v2, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isSpeek:Z

    .line 95
    return-void
.end method

.method public isSpeek()Z
    .locals 4

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isSpeek:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->speekId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextRun()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasSeriousCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->nextRun()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasMediumCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->nextRun()V

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isStart:Z

    goto :goto_0
.end method

.method public nextRun(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V
    .locals 4
    .param p1, "type"    # Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->serious:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    if-ne v0, p1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->getSpeekId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasMediumCode2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->nextRun()V

    .line 137
    :cond_0
    :goto_1
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->nextRun()V

    goto :goto_0

    .line 126
    :cond_2
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->medium:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    if-ne v0, p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->getSpeekId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 133
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasSeriousCode2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->nextRun()V

    goto :goto_1

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->nextRun()V

    goto :goto_2
.end method

.method public nextRunBySpeekEnd()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->getSpeekId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 141
    iput-wide v2, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->speekId:J

    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->setSpeekId(J)V

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->serious:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->nextRun(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->getSpeekId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 149
    iput-wide v2, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->speekId:J

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->setSpeekId(J)V

    .line 152
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->medium:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->nextRun(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V

    goto :goto_0
.end method

.method public removeMediumMap(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)V
    .locals 1
    .param p1, "actionBean"    # Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mediumTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->remove(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)V

    .line 167
    return-void
.end method

.method public removeSeriousMap(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)V
    .locals 1
    .param p1, "actionBean"    # Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->seriousTask:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->remove(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)V

    .line 172
    return-void
.end method

.method public runEnd(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V
    .locals 1
    .param p1, "type"    # Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->runEnd(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V

    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasErrorCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isStart:Z

    .line 163
    :cond_0
    return-void
.end method

.method public setStart(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isStart:Z

    .line 46
    return-void
.end method

.method public speakFinish()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isSpeek:Z

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method

.method public speekText(Ljava/lang/String;J)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "speekId"    # J

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isSpeek:Z

    .line 50
    iput-wide p2, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->speekId:J

    .line 53
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isStart:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isStart:Z

    .line 100
    invoke-virtual {p0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->nextRun()V

    .line 102
    :cond_0
    return-void
.end method
