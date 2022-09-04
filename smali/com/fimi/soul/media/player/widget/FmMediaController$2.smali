.class Lcom/fimi/soul/media/player/widget/FmMediaController$2;
.super Ljava/lang/Object;
.source "FmMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 207
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$2;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 209
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$2;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$100(Lcom/fimi/soul/media/player/widget/FmMediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$2;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-virtual {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->hide()V

    .line 214
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
