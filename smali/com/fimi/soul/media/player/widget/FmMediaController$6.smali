.class Lcom/fimi/soul/media/player/widget/FmMediaController$6;
.super Ljava/lang/Object;
.source "FmMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/soul/media/player/widget/FmMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;


# direct methods
.method constructor <init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$6;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 681
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$6;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$700(Lcom/fimi/soul/media/player/widget/FmMediaController;)Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 682
    .local v0, "pos":I
    add-int/lit16 v0, v0, -0x1388

    .line 683
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$6;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$700(Lcom/fimi/soul/media/player/widget/FmMediaController;)Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->seekTo(I)V

    .line 684
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$6;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$500(Lcom/fimi/soul/media/player/widget/FmMediaController;)I

    .line 686
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$6;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    .line 687
    return-void
.end method
