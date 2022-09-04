.class public Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;
.super Landroid/widget/RelativeLayout;
.source "X8PlusMinusSeekBar2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;
    }
.end annotation


# instance fields
.field private curValue:I

.field private listener:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;

.field private mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

.field private rlMinus:Landroid/view/View;

.field private rlPlus:Landroid/view/View;

.field private seekBarMax:I

.field private seekBarMin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0xa

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMax:I

    .line 25
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMin:I

    .line 26
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->curValue:I

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_plus_minus_seekbar_layout2:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    .line 46
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->rlMinus:Landroid/view/View;

    .line 47
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->rlPlus:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->rlMinus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->rlPlus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMax:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setMaxProgress(I)V

    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;)V

    .line 52
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->curValue:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->setProgress(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->curValue:I

    return v0
.end method

.method public initData(II)V
    .locals 2
    .param p1, "seekBarMin"    # I
    .param p2, "seekBarMax"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMin:I

    .line 58
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMax:I

    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    sub-int v1, p2, p1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setMaxProgress(I)V

    .line 60
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->curValue:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->setProgress(I)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 73
    .local v0, "i":I
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    if-ne v0, v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getMaxProgress()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 75
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 76
    .local v1, "s":I
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getMaxProgress()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getMaxProgress()I

    move-result v1

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 92
    .end local v1    # "s":I
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    if-ne v0, v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 85
    .restart local v1    # "s":I
    if-gez v1, :cond_3

    .line 86
    const/4 v1, 0x0

    .line 88
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto :goto_0
.end method

.method public onProgress(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 3
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 106
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMin:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->curValue:I

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->listener:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->listener:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->getId()I

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->curValue:I

    invoke-interface {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;->onSeekValueSet(II)V

    .line 110
    :cond_0
    return-void
.end method

.method public onStart(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 2
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->listener:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;

    invoke-virtual {p1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;->onStart(II)V

    .line 102
    return-void
.end method

.method public onStop(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 2
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->listener:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;

    invoke-virtual {p1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;->onStop(II)V

    .line 115
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->listener:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;

    .line 38
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 64
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMax:I

    .line 65
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMin:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMin:I

    .line 66
    :cond_1
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->curValue:I

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->seekBarMin:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 68
    return-void
.end method
