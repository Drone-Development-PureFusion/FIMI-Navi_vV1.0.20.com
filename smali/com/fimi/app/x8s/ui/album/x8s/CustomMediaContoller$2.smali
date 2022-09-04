.class Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;
.super Ljava/lang/Object;
.source "CustomMediaContoller.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)J

    move-result-wide v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;J)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "string":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$300(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)J

    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$402(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;Z)Z

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$500(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->show()V

    .line 109
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$500(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0, v6}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$402(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;Z)Z

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$600(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;->seekTo(I)V

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$500(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0, v6}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$402(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;Z)Z

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$500(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->show()V

    .line 121
    return-void
.end method
