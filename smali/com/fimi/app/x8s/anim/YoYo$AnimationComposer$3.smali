.class Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$3;
.super Lcom/fimi/app/x8s/anim/YoYo$EmptyAnimatorListener;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->onCancel(Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

.field final synthetic val$callback:Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$3;->this$0:Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    iput-object p2, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$3;->val$callback:Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/anim/YoYo$EmptyAnimatorListener;-><init>(Lcom/fimi/app/x8s/anim/YoYo$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$3;->val$callback:Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;->call(Landroid/animation/Animator;)V

    .line 188
    return-void
.end method
