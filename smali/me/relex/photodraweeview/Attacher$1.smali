.class Lme/relex/photodraweeview/Attacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Attacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/relex/photodraweeview/Attacher;-><init>(Lcom/facebook/drawee/view/DraweeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/relex/photodraweeview/Attacher;


# direct methods
.method constructor <init>(Lme/relex/photodraweeview/Attacher;)V
    .locals 0
    .param p1, "this$0"    # Lme/relex/photodraweeview/Attacher;

    .prologue
    .line 74
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher$1;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 77
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$1;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v0}, Lme/relex/photodraweeview/Attacher;->access$000(Lme/relex/photodraweeview/Attacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$1;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v0}, Lme/relex/photodraweeview/Attacher;->access$000(Lme/relex/photodraweeview/Attacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lme/relex/photodraweeview/Attacher$1;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v1}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 80
    :cond_0
    return-void
.end method
