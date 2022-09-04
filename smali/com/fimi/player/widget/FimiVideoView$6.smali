.class Lcom/fimi/player/widget/FimiVideoView$6;
.super Ljava/lang/Object;
.source "FimiVideoView.java"

# interfaces
.implements Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/player/widget/FimiVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/player/widget/FimiVideoView;


# direct methods
.method constructor <init>(Lcom/fimi/player/widget/FimiVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView$6;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/fimi/player/IMediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Lcom/fimi/player/IMediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$6;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0, p2}, Lcom/fimi/player/widget/FimiVideoView;->access$2002(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 627
    return-void
.end method
