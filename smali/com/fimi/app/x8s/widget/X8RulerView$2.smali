.class Lcom/fimi/app/x8s/widget/X8RulerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8RulerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8RulerView;->autoVelocityScroll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8RulerView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8RulerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8RulerView;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$2;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView$2;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8RulerView;->access$300(Lcom/fimi/app/x8s/widget/X8RulerView;)V

    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView$2;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8RulerView;->access$400(Lcom/fimi/app/x8s/widget/X8RulerView;)V

    .line 281
    return-void
.end method
