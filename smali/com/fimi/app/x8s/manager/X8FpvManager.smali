.class public Lcom/fimi/app/x8s/manager/X8FpvManager;
.super Ljava/lang/Object;
.source "X8FpvManager.java"


# static fields
.field public static isUpdateing:Z


# instance fields
.field private fpvModeState:I

.field private lastState:I

.field private mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

.field private mX8VcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/app/x8s/manager/X8FpvManager;->isUpdateing:Z

    return-void
.end method

.method public constructor <init>(Lcom/fimi/x8sdk/controller/X8VcManager;Lcom/fimi/app/x8s/controls/X8MapVideoController;)V
    .locals 1
    .param p1, "mX8VcManager"    # Lcom/fimi/x8sdk/controller/X8VcManager;
    .param p2, "mMapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->state:I

    .line 16
    iput v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->lastState:I

    .line 18
    iput v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->fpvModeState:I

    .line 22
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->mX8VcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

    .line 23
    iput-object p2, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/manager/X8FpvManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/manager/X8FpvManager;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->fpvModeState:I

    return p1
.end method


# virtual methods
.method public onDroneConnectState(Z)V
    .locals 3
    .param p1, "isConnect"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    iput v2, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->state:I

    .line 29
    iget v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->state:I

    iget v1, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->lastState:I

    if-eq v0, v1, :cond_0

    .line 30
    iput v2, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->lastState:I

    .line 31
    iput v2, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->fpvModeState:I

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/manager/X8FpvManager;->sendVcSetFpvMode()V

    .line 34
    invoke-virtual {p0}, Lcom/fimi/app/x8s/manager/X8FpvManager;->setVcFpvLostSeq()V

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_1
    iput v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->lastState:I

    .line 37
    iput v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->state:I

    .line 38
    iput v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->fpvModeState:I

    goto :goto_0
.end method

.method public sendVcSetFpvMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    iget v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->fpvModeState:I

    if-ne v0, v2, :cond_0

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->fpvModeState:I

    .line 46
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->mX8VcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

    new-instance v1, Lcom/fimi/app/x8s/manager/X8FpvManager$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/manager/X8FpvManager$1;-><init>(Lcom/fimi/app/x8s/manager/X8FpvManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/X8VcManager;->setVcFpvMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 58
    :cond_0
    return-void
.end method

.method public setVcFpvLostSeq()V
    .locals 3

    .prologue
    .line 62
    sget-boolean v1, Lcom/fimi/app/x8s/manager/X8FpvManager;->isUpdateing:Z

    if-nez v1, :cond_0

    .line 63
    iget v1, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->fpvModeState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getVideoView()Lcom/fimi/app/x8s/media/FimiH264Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->getmH264Decoder()Lcom/fimi/app/x8s/media/H264Decoder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getVideoView()Lcom/fimi/app/x8s/media/FimiH264Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->getmH264Decoder()Lcom/fimi/app/x8s/media/H264Decoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/H264Decoder;->getmH264Player()Lcom/fimi/app/x8s/media/H264Player;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getVideoView()Lcom/fimi/app/x8s/media/FimiH264Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->getmH264Decoder()Lcom/fimi/app/x8s/media/H264Decoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/H264Decoder;->getmH264Player()Lcom/fimi/app/x8s/media/H264Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/H264Player;->getLostSeq()I

    move-result v0

    .line 68
    .local v0, "seq":I
    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8FpvManager;->mX8VcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

    new-instance v2, Lcom/fimi/app/x8s/manager/X8FpvManager$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/manager/X8FpvManager$2;-><init>(Lcom/fimi/app/x8s/manager/X8FpvManager;)V

    invoke-virtual {v1, v2, v0}, Lcom/fimi/x8sdk/controller/X8VcManager;->setVcFpvLostSeq(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    goto :goto_0
.end method
