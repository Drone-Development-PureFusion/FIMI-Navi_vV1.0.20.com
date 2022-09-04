.class Lcom/fimi/app/x8s/widget/X8TrackOverlayView$1;
.super Landroid/os/Handler;
.source "X8TrackOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/X8TrackOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8TrackOverlayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$1;->this$0:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 428
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 429
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$1;->this$0:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->cleanTrackerRect()V

    .line 430
    return-void
.end method
