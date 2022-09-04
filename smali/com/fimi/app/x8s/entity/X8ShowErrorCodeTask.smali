.class public Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;
.super Ljava/lang/Object;
.source "X8ShowErrorCodeTask.java"


# instance fields
.field private context:Landroid/content/Context;

.field private errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

.field private flashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

.field private isShowTex:Z

.field private lastActionBean:Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

.field private lastTime:J

.field private mHandler:Landroid/os/Handler;

.field private pattern:[J

.field private speakList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation
.end field

.field private speekId:J

.field private volatile startTime:J

.field private state:I

.field private type:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

.field private vibrateLList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation
.end field

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fimi/app/x8s/controls/X8ErrorCodeController;Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCodeController"    # Lcom/fimi/app/x8s/controls/X8ErrorCodeController;
    .param p3, "type"    # Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;
    .param p4, "x8ErrerCodeSpeakFlashManager"    # Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speekId:J

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->pattern:[J

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speakList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrateLList:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->state:I

    .line 51
    new-instance v0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$1;-><init>(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    .line 68
    iput-object p3, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->type:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    .line 69
    iput-object p4, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->flashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    .line 70
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrator:Landroid/os/Vibrator;

    .line 72
    return-void

    .line 35
    nop

    :array_0
    .array-data 8
        0x32
        0xc8
        0x32
        0xc8
        0x32
        0xc8
    .end array-data
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isShowTex:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;)Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->type:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;)Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->flashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    return-object v0
.end method


# virtual methods
.method public clearList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speakList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speakList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 206
    .local v0, "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->setSpeaking(Z)V

    goto :goto_0

    .line 208
    .end local v0    # "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speakList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrateLList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrateLList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 215
    .restart local v0    # "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->setVibrating(Z)V

    goto :goto_1

    .line 217
    .end local v0    # "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrateLList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 219
    :cond_3
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->clearList()V

    .line 200
    return-void
.end method

.method public getAcitonBean()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "actionBean":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->type:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->serious:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    if-ne v1, v2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getSeriousCode()Ljava/util/List;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getMediumCode()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSpeekId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speekId:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->state:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 4

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->type:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->serious:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    if-ne v1, v2, :cond_0

    .line 173
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasSeriousCode()Z

    move-result v0

    .line 177
    :goto_0
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->type:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 178
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasMediumCode()Z

    move-result v0

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isShowTex:Z

    return v0
.end method

.method public isSpeaking(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)Z
    .locals 1
    .param p1, "bean"    # Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speakList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVibrating(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)Z
    .locals 1
    .param p1, "bean"    # Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrateLList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public nextRun()V
    .locals 12

    .prologue
    .line 103
    iget-boolean v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isShowTex:Z

    if-nez v5, :cond_8

    .line 104
    invoke-virtual {p0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->hasErrorCode()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 105
    invoke-virtual {p0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->getAcitonBean()Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "actionBeans":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v4, "x8ErrorCodeList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8ErrorCode;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 109
    .local v0, "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    if-eqz v0, :cond_0

    .line 110
    const/4 v5, 0x1

    iput v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->state:I

    .line 111
    new-instance v2, Lcom/fimi/app/x8s/entity/X8ErrorCode;

    invoke-direct {v2}, Lcom/fimi/app/x8s/entity/X8ErrorCode;-><init>()V

    .line 112
    .local v2, "code":Lcom/fimi/app/x8s/entity/X8ErrorCode;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getSeverity()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    sget-object v5, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->serious:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    :goto_1
    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->setLevel(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V

    .line 113
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getText()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->setTitle(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getSpeak()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->setSpeakStr(Ljava/lang/String;)V

    .line 115
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->setShow(Z)V

    .line 116
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->isVibrate()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrator:Landroid/os/Vibrator;

    if-eqz v5, :cond_1

    .line 117
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->flashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isSpeek()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isVibrating(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 118
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrateLList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v5

    const-string v7, "isVibrating"

    invoke-virtual {v5, v7}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 120
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrator:Landroid/os/Vibrator;

    iget-object v7, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->pattern:[J

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 123
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getSpeak()I

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isSpeaking(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 126
    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->getSpeakStr()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->flashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->isSpeek()Z

    move-result v5

    if-nez v5, :cond_2

    .line 129
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speakList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speekId:J

    .line 131
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->flashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    iget-wide v8, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speekId:J

    invoke-virtual {v5, v3, v8, v9}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->speekText(Ljava/lang/String;J)V

    .line 138
    .end local v3    # "text":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->lastActionBean:Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->lastActionBean:Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    invoke-virtual {v7}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getLabel()Ljava/lang/String;

    move-result-object v7

    if-ne v5, v7, :cond_4

    .line 139
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    iget-object v5, v5, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->currentMap:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getInhibition()I

    move-result v5

    if-lez v5, :cond_4

    .line 140
    iget-wide v8, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->startTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_3

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->startTime:J

    .line 143
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->lastTime:J

    .line 144
    iget-wide v8, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->lastTime:J

    iget-wide v10, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->startTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getInhibition()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-ltz v5, :cond_6

    .line 146
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->setShow(Z)V

    .line 147
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->startTime:J

    .line 154
    :cond_4
    :goto_2
    iput-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->lastActionBean:Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 155
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 112
    :cond_5
    sget-object v5, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->medium:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    goto/16 :goto_1

    .line 149
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->setShow(Z)V

    goto :goto_2

    .line 159
    .end local v0    # "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .end local v2    # "code":Lcom/fimi/app/x8s/entity/X8ErrorCode;
    :cond_7
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->showText(Ljava/util/List;)V

    .line 167
    .end local v1    # "actionBeans":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    .end local v4    # "x8ErrorCodeList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8ErrorCode;>;"
    :cond_8
    :goto_3
    return-void

    .line 162
    :cond_9
    const/4 v5, 0x0

    iput v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->state:I

    .line 163
    invoke-virtual {p0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->clearList()V

    .line 164
    iget-object v5, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->flashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    iget-object v6, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->type:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    invoke-virtual {v5, v6}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->runEnd(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V

    goto :goto_3
.end method

.method public remove(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)V
    .locals 1
    .param p1, "actionBean"    # Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speakList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speakList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speakList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrateLList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrateLList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->vibrateLList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    :cond_1
    return-void
.end method

.method public setSpeekId(J)V
    .locals 1
    .param p1, "speekId"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->speekId:J

    .line 99
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->state:I

    .line 48
    return-void
.end method

.method public showText(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8ErrorCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "codeList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8ErrorCode;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->isShowTex:Z

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->errorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    new-instance v1, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$2;-><init>(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;)V

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->showTextByCode(Ljava/util/List;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;)V

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    return-void
.end method
