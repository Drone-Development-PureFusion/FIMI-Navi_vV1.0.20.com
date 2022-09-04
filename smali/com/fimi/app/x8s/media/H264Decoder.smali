.class public Lcom/fimi/app/x8s/media/H264Decoder;
.super Ljava/lang/Object;
.source "H264Decoder.java"


# instance fields
.field private isWorking:Z

.field private mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

.field private mH264Player:Lcom/fimi/app/x8s/media/H264Player;

.field private mH264StreamParseThread:Lcom/fimi/app/x8s/media/H264StreamParseThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmH264Player()Lcom/fimi/app/x8s/media/H264Player;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264Player;->deInitDecode()V

    .line 96
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->isWorking:Z

    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->release()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264Player;->stop()V

    .line 47
    :cond_1
    return-void
.end method

.method public setEnableCallback(I)V
    .locals 1
    .param p1, "enbale"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/H264Player;->setEnableCallback(I)V

    .line 103
    return-void
.end method

.method public setH264StreamData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->isWorking:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/H264DecoderThread;->notityDecode([B)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->isWorking:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fimi/app/x8s/media/H264Player;->addBufferData([BII)V

    .line 67
    :cond_1
    return-void
.end method

.method public setX8VideoFrameBufferListener(Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/H264Player;->setX8VideoFrameBufferListener(Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;)V

    .line 99
    return-void
.end method

.method public startJniThread(Landroid/view/Surface;IIILcom/fimi/app/x8s/media/IFrameDataListener;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "frameRate"    # I
    .param p5, "listener"    # Lcom/fimi/app/x8s/media/IFrameDataListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/fimi/app/x8s/media/H264Player;

    invoke-direct {v0, p5}, Lcom/fimi/app/x8s/media/H264Player;-><init>(Lcom/fimi/app/x8s/media/IFrameDataListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/H264Player;->setSurface(Landroid/view/Surface;)V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264Player;->start()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->isWorking:Z

    .line 90
    return-void
.end method

.method public startJniWorkThread(Landroid/view/Surface;IIILcom/fimi/app/x8s/media/IFrameDataListener;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "frameRate"    # I
    .param p5, "listener"    # Lcom/fimi/app/x8s/media/IFrameDataListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/fimi/app/x8s/media/H264Player;

    invoke-direct {v0, p5}, Lcom/fimi/app/x8s/media/H264Player;-><init>(Lcom/fimi/app/x8s/media/IFrameDataListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/H264Player;->setSurface(Landroid/view/Surface;)V

    .line 74
    new-instance v0, Lcom/fimi/app/x8s/media/H264DecoderThread;

    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    invoke-direct {v0, v1, p5}, Lcom/fimi/app/x8s/media/H264DecoderThread;-><init>(Lcom/fimi/app/x8s/media/H264Player;Lcom/fimi/app/x8s/media/IFrameDataListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->start()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->isWorking:Z

    .line 79
    return-void
.end method

.method public startWorkThread(Landroid/view/Surface;IIILcom/fimi/app/x8s/media/IFrameDataListener;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "frameRate"    # I
    .param p5, "listener"    # Lcom/fimi/app/x8s/media/IFrameDataListener;

    .prologue
    .line 50
    new-instance v0, Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-direct {v0, p0, p5}, Lcom/fimi/app/x8s/media/H264DecoderThread;-><init>(Lcom/fimi/app/x8s/media/H264Decoder;Lcom/fimi/app/x8s/media/IFrameDataListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->mH264DecoderThread:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->start()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/media/H264Decoder;->isWorking:Z

    .line 55
    return-void
.end method

.method public stopThread()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/H264Decoder;->release()V

    .line 33
    return-void
.end method
