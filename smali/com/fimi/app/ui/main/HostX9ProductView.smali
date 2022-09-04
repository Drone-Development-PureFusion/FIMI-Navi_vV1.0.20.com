.class public Lcom/fimi/app/ui/main/HostX9ProductView;
.super Landroid/widget/FrameLayout;
.source "HostX9ProductView.java"


# instance fields
.field animation:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

.field animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field imgX9Product:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    const v0, 0x7f1001c5

    invoke-virtual {p0, v0}, Lcom/fimi/app/ui/main/HostX9ProductView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostX9ProductView;->imgX9Product:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f0c002a

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/fimi/kernel/animutils/AnimationsContainer;->getInstance(II)Lcom/fimi/kernel/animutils/AnimationsContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/ui/main/HostX9ProductView;->imgX9Product:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/animutils/AnimationsContainer;->createProgressDialogAnim(Landroid/widget/ImageView;)Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostX9ProductView;->animation:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .line 31
    return-void
.end method


# virtual methods
.method public startAnimation()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostX9ProductView;->animation:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/ui/main/HostX9ProductView;->animation:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-virtual {v0}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->isShouldRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostX9ProductView;->animation:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-virtual {v0}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->start()V

    .line 41
    :cond_0
    return-void
.end method

.method public stopnAnimation()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostX9ProductView;->animation:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/ui/main/HostX9ProductView;->animation:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-virtual {v0}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->isShouldRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostX9ProductView;->animation:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-virtual {v0}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->stop()V

    .line 47
    :cond_0
    return-void
.end method
