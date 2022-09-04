.class public Lcom/fimi/app/x8s/widget/X8CustomSeekBar;
.super Landroid/widget/LinearLayout;
.source "X8CustomSeekBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private curValue:I

.field private listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

.field private longClickListener:Lcom/fimi/app/x8s/interfaces/LongClickListener;

.field private name:Ljava/lang/String;

.field private rlAdd:Landroid/widget/RelativeLayout;

.field private rlReduce:Landroid/widget/RelativeLayout;

.field private seekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

.field private seekBarMax:I

.field private seekBarMin:I

.field private tvParam:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    const/4 v5, -0x1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v2, "DDLog"

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->TAG:Ljava/lang/String;

    .line 28
    const-string v2, "name"

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->name:Ljava/lang/String;

    .line 29
    const/16 v2, 0x64

    iput v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMax:I

    .line 30
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMin:I

    .line 31
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    .line 112
    new-instance v2, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;-><init>(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->longClickListener:Lcom/fimi/app/x8s/interfaces/LongClickListener;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_view_custom_seekbar:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->addView(Landroid/view/View;)V

    .line 44
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_add:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->rlAdd:Landroid/widget/RelativeLayout;

    .line 45
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_reduce:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->rlReduce:Landroid/widget/RelativeLayout;

    .line 47
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->rlAdd:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->rlReduce:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->rlAdd:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->longClickListener:Lcom/fimi/app/x8s/interfaces/LongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->rlReduce:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->longClickListener:Lcom/fimi/app/x8s/interfaces/LongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_param:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->tvParam:Landroid/widget/TextView;

    .line 54
    sget v2, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    .line 56
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMax:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setMaxProgress(I)V

    .line 57
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;)V

    .line 58
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setProgress(I)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .prologue
    .line 20
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    return v0
.end method

.method static synthetic access$008(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .prologue
    .line 20
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    return v0
.end method

.method static synthetic access$010(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .prologue
    .line 20
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .prologue
    .line 20
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMax:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .prologue
    .line 20
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMin:I

    return v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    return-object v0
.end method


# virtual methods
.method public getCurValue()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    return v0
.end method

.method public initData(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "seekBarMin"    # I
    .param p3, "seekBarMax"    # I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->name:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMin:I

    .line 67
    iput p3, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMax:I

    .line 68
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setProgress(I)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 87
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_add:I

    if-ne v0, v1, :cond_1

    .line 88
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMax:I

    if-ge v1, v2, :cond_0

    .line 89
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    .line 91
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->getId()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    invoke-interface {v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;->onSeekValueSet(II)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_reduce:I

    if-ne v0, v1, :cond_0

    .line 97
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMin:I

    if-le v1, v2, :cond_0

    .line 98
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    .line 100
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->getId()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    invoke-interface {v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;->onSeekValueSet(II)V

    goto :goto_0
.end method

.method public onProgress(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 1
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 149
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMin:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    .line 150
    return-void
.end method

.method public onStart(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onStop(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 3
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->getId()I

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    invoke-interface {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;->onSeekValueSet(II)V

    .line 157
    :cond_0
    return-void
.end method

.method public setOnSeekChangedListener(Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    .line 140
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMax:I

    .line 73
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMin:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMin:I

    .line 74
    :cond_1
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->seekBarMin:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->tvParam:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->curValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
