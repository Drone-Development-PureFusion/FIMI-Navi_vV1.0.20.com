.class Lcom/fimi/player/widget/FmMediaController$6;
.super Ljava/lang/Object;
.source "FmMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/player/widget/FmMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/player/widget/FmMediaController;


# direct methods
.method constructor <init>(Lcom/fimi/player/widget/FmMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/fimi/player/widget/FmMediaController$6;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 678
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$6;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$700(Lcom/fimi/player/widget/FmMediaController;)Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 679
    .local v0, "pos":I
    add-int/lit16 v0, v0, -0x1388

    .line 680
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$6;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$700(Lcom/fimi/player/widget/FmMediaController;)Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->seekTo(I)V

    .line 681
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$6;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$500(Lcom/fimi/player/widget/FmMediaController;)I

    .line 683
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$6;->this$0:Lcom/fimi/player/widget/FmMediaController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/fimi/player/widget/FmMediaController;->show(I)V

    .line 684
    return-void
.end method
