.class public Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;
.super Landroid/widget/RelativeLayout;
.source "X8HorizontalTrimView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnAdd:Landroid/widget/ImageButton;

.field private btnReduce:Landroid/widget/ImageButton;

.field private currValue:I

.field private isReady:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

.field private root_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field private seekBar:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

.field private tvBubbleTop:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->currValue:I

    .line 25
    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->isReady:Z

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_gimbal_horizontal_trim_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/fimi/app/x8s/R$id;->root_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->root_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 34
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    sget v2, Lcom/fimi/app/x8s/R$id;->seek_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->seekBar:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    .line 38
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_bubble_top:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->tvBubbleTop:Landroid/widget/TextView;

    .line 40
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_sure:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_gimbal_reduce_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->btnReduce:Landroid/widget/ImageButton;

    .line 42
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_gimbal_add_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->btnAdd:Landroid/widget/ImageButton;

    .line 43
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->btnReduce:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->btnAdd:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->seekBar:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    new-instance v3, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;

    invoke-direct {v3, p0, p1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;-><init>(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->setOnSeekProgressListener(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    .prologue
    .line 18
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->currValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->currValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->tvBubbleTop:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;)Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->seekBar:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->isReady:Z

    return p1
.end method


# virtual methods
.method public getCurrValue()F
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->currValue:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x3f8ccccd    # 1.1f

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 128
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_sure:I

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->currValue:I

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;->onSettingReady(F)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_gimbal_reduce_left:I

    if-ne v0, v1, :cond_2

    .line 134
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->currValue:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->setCurrValue(F)V

    goto :goto_0

    .line 136
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_gimbal_add_right:I

    if-ne v0, v1, :cond_0

    .line 137
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->currValue:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->setCurrValue(F)V

    goto :goto_0
.end method

.method public setCurrValue(F)V
    .locals 1
    .param p1, "currValue"    # F

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->isReady:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->seekBar:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->setProgress(F)V

    .line 119
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->btnReduce:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->btnAdd:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->seekBar:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->setEnabled(Z)V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->root_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 81
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    .line 144
    return-void
.end method

.method public varargs updateViewEnable(Z[Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "parent"    # [Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 90
    if-eqz p2, :cond_3

    array-length v4, p2

    if-lez v4, :cond_3

    .line 91
    array-length v6, p2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, p2, v4

    .line 92
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 93
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "subView":Landroid/view/View;
    instance-of v7, v3, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 96
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "subView":Landroid/view/View;
    aput-object v3, v7, v5

    invoke-virtual {p0, p1, v7}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 93
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .restart local v3    # "subView":Landroid/view/View;
    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    if-eqz p1, :cond_1

    .line 101
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 103
    :cond_1
    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 91
    .end local v3    # "subView":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "j":I
    .end local v2    # "len":I
    :cond_3
    return-void
.end method
