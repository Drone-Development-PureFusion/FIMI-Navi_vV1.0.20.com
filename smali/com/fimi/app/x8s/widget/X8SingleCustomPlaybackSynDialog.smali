.class public Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;
.super Lcom/fimi/app/x8s/widget/X8sBaseDialog;
.source "X8SingleCustomPlaybackSynDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;
    }
.end annotation


# instance fields
.field private x8PbPlaybackPlan:Landroid/widget/ProgressBar;

.field private x8TvPlaybackProgress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    sget v4, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    sget v4, Lcom/fimi/app/x8s/R$layout;->x8_view_custom_playback_syn_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->setContentView(I)V

    .line 28
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_iv_playback_animation:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 29
    .local v3, "x8IvPlaybackAnimation":Landroid/widget/ImageView;
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_animation:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 30
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 31
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 32
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_pb_playback_plan:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->x8PbPlaybackPlan:Landroid/widget/ProgressBar;

    .line 33
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_tv_playback_progress:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->x8TvPlaybackProgress:Landroid/widget/TextView;

    .line 35
    if-eqz p2, :cond_0

    .line 36
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    .local v2, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .end local v2    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_sure:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 41
    .local v1, "tvSure":Landroid/widget/Button;
    new-instance v4, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$1;

    invoke-direct {v4, p0, p3}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$1;-><init>(Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public setX8PbPlaybackPlanValue(I)V
    .locals 3
    .param p1, "plan"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->x8PbPlaybackPlan:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->x8TvPlaybackProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
