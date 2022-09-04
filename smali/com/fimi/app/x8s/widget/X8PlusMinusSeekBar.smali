.class public Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;
.super Landroid/widget/RelativeLayout;
.source "X8PlusMinusSeekBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private curValue:I

.field private defaultValue:I

.field private imgReset:Landroid/view/View;

.field private listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private onSeekChangedListener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

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

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMax:I

    .line 26
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMin:I

    .line 27
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->curValue:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->defaultValue:I

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_plus_minus_seekbar_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 42
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->rlMinus:Landroid/view/View;

    .line 43
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->rlPlus:Landroid/view/View;

    .line 44
    sget v0, Lcom/fimi/app/x8s/R$id;->img_reset:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->imgReset:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->rlMinus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->rlPlus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->imgReset:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMax:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 50
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->curValue:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->setProgress(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->curValue:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 64
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    if-ne v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    if-ne v0, v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 74
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->img_reset:I

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->defaultValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 82
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMin:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->curValue:I

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->getId()I

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->curValue:I

    invoke-interface {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;->onSeekValueSet(II)V

    .line 86
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 92
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 97
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    .line 34
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 55
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMax:I

    .line 56
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMin:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMin:I

    .line 57
    :cond_1
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->curValue:I

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar;->seekBarMin:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    return-void
.end method
