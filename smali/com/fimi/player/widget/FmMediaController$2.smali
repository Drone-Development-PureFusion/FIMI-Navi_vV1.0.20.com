.class Lcom/fimi/player/widget/FmMediaController$2;
.super Ljava/lang/Object;
.source "FmMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 204
    iput-object p1, p0, Lcom/fimi/player/widget/FmMediaController$2;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController$2;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v0}, Lcom/fimi/player/widget/FmMediaController;->access$100(Lcom/fimi/player/widget/FmMediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController$2;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-virtual {v0}, Lcom/fimi/player/widget/FmMediaController;->hide()V

    .line 211
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
