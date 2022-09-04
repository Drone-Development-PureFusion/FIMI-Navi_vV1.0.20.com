.class public Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;
.super Landroid/widget/RelativeLayout;
.source "X8ValueSeakBarWithTip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:I = 0x66

.field private static final ENABLED_ALPHA:I = 0xff


# instance fields
.field private MAX:I

.field private MIN:I

.field private accuracy:I

.field private closeColor:I

.field confirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;

.field private currentProgress:I

.field private currentValue:F

.field private historyProgress:I

.field private imbConfirm:Landroid/widget/ImageButton;

.field private imgMenu:Landroid/widget/ImageView;

.field private isEnableClick:Z

.field private isFloat:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;

.field private mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mTvValue:Landroid/widget/TextView;

.field private na:Ljava/lang/String;

.field private openColor:I

.field private rlFlagMenu:Landroid/view/View;

.field private rlMinus:Landroid/view/View;

.field private rlPlus:Landroid/view/View;

.field private rlSeekBar:Landroid/view/View;

.field rlTittle:Landroid/widget/RelativeLayout;

.field private seekBarDefault:F

.field private seekBarMax:F

.field private seekBarMin:F

.field private suffix:Ljava/lang/String;

.field private switchButton:Lcom/fimi/widget/SwitchButton;

.field private title:Ljava/lang/String;

.field private vMinus:Landroid/view/View;

.field private vPlus:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->suffix:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->title:Ljava/lang/String;

    .line 43
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentProgress:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    .line 46
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MAX:I

    .line 47
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MIN:I

    .line 49
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    .line 54
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->isEnableClick:Z

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->readAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->na:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_value_seekbar_with_tip_layout:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvTitle:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_value:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/fimi/app/x8s/R$id;->img_flag_menu:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imgMenu:Landroid/widget/ImageView;

    .line 100
    sget v0, Lcom/fimi/app/x8s/R$id;->view_minus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vMinus:Landroid/view/View;

    .line 101
    sget v0, Lcom/fimi/app/x8s/R$id;->view_plus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vPlus:Landroid/view/View;

    .line 102
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_confirm:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    .line 103
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    .line 104
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlTittle:Landroid/widget/RelativeLayout;

    .line 106
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_flag_menu:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlFlagMenu:Landroid/view/View;

    .line 107
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_seekbar:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlSeekBar:Landroid/view/View;

    .line 108
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlMinus:Landroid/view/View;

    .line 109
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlPlus:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlMinus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlPlus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlFlagMenu:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlSeekBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->closeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MAX:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setMaxProgress(I)V

    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 123
    sget v0, Lcom/fimi/app/x8s/R$id;->swb_toggle:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/SwitchButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    .line 126
    return-void
.end method

.method private readAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 258
    sget-object v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 261
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_accuracy:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    .line 262
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->title:Ljava/lang/String;

    .line 263
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_suffix:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->suffix:Ljava/lang/String;

    .line 264
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_close_color:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->closeColor:I

    .line 265
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_open_color:I

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->openColor:I

    .line 266
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_seekbar_max:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMax:F

    .line 267
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_seekbar_min:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMin:F

    .line 268
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_seekbar_default:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarDefault:F

    .line 269
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_seekbar_float:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->isFloat:Z

    .line 270
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->isFloat:Z

    if-eqz v1, :cond_0

    .line 273
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMax:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMin:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MAX:I

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_0
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMax:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMin:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MAX:I

    goto :goto_0
.end method

.method private resetView()V
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->isFloat:Z

    if-eqz v0, :cond_0

    .line 361
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setProgress(F)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentValue()F
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    return v0
.end method

.method public getValueString(I)Ljava/lang/String;
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/4 v6, 0x1

    .line 300
    iget-boolean v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->isFloat:Z

    if-eqz v4, :cond_2

    .line 301
    int-to-float v4, p1

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMin:F

    add-float v0, v4, v5

    .line 302
    .local v0, "p":F
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    .line 303
    const-string v1, ""

    .line 304
    .local v1, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->suffix:Ljava/lang/String;

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    move-object v3, v1

    .line 324
    .end local v0    # "p":F
    .end local v2    # "s":Ljava/lang/String;
    .local v3, "s":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 306
    .end local v3    # "s":Ljava/lang/String;
    .restart local v0    # "p":F
    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->suffix:Ljava/lang/String;

    const-string v5, "M/S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 309
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 314
    .end local v0    # "p":F
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    int-to-float v4, p1

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMin:F

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 315
    .local v0, "p":I
    int-to-float v4, v0

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    .line 316
    const-string v1, ""

    .line 317
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->suffix:Ljava/lang/String;

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    move-object v3, v1

    .line 324
    .end local v2    # "s":Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_1

    .line 319
    .end local v3    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->suffix:Ljava/lang/String;

    const-string v5, "M/S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 320
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 322
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public isEnableClick()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->isEnableClick:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 148
    .local v0, "id":I
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_menu:I

    if-ne v0, v2, :cond_3

    .line 149
    iget-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->isEnableClick:Z

    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlSeekBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 153
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlSeekBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->openColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imgMenu:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 156
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->listener:Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->listener:Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;

    invoke-interface {v2, v4}, Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;->onSelect(Z)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->onOtherSelect()V

    goto :goto_0

    .line 166
    :cond_3
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    if-ne v0, v2, :cond_5

    .line 167
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MIN:I

    if-eq v2, v3, :cond_0

    .line 168
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    sub-int v1, v2, v3

    .line 169
    .local v1, "s":I
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MIN:I

    if-ge v1, v2, :cond_4

    .line 170
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MIN:I

    .line 172
    :cond_4
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto :goto_0

    .line 174
    .end local v1    # "s":I
    :cond_5
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    if-ne v0, v2, :cond_7

    .line 175
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MAX:I

    if-eq v2, v3, :cond_0

    .line 176
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    add-int v1, v2, v3

    .line 177
    .restart local v1    # "s":I
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MAX:I

    if-le v1, v2, :cond_6

    .line 178
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->MAX:I

    .line 180
    :cond_6
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto :goto_0

    .line 182
    .end local v1    # "s":I
    :cond_7
    sget v2, Lcom/fimi/app/x8s/R$id;->imb_confirm:I

    if-ne v0, v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->confirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->confirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;->onConfirm(F)V

    goto/16 :goto_0
.end method

.method public onOtherSelect()V
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentProgress:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->getValueString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentProgress:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlSeekBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->closeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imgMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 377
    return-void
.end method

.method public onProgress(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 2
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->getValueString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->historyProgress:I

    .line 65
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentProgress:I

    if-ne v0, p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStart(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 59
    return-void
.end method

.method public onStop(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 75
    return-void
.end method

.method public setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;)V
    .locals 0
    .param p1, "confirmListener"    # Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->confirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;

    .line 90
    return-void
.end method

.method public setEnableClick(Z)V
    .locals 0
    .param p1, "enableClick"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->isEnableClick:Z

    .line 84
    return-void
.end method

.method public setImbConfirmEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 193
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->historyProgress:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentProgress:I

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 195
    return-void
.end method

.method public setImgMenuVisiable(I)V
    .locals 1
    .param p1, "visiable"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imgMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;)V
    .locals 0
    .param p1, "ix8ValueSeakBarViewListener"    # Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->listener:Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;

    .line 381
    return-void
.end method

.method public setNoLimit()V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imgMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setEnableClick(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->onOtherSelect()V

    .line 399
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_fly_distance_limit_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method public setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/widget/SwitchButton$OnSwitchListener;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 389
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 332
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    .line 333
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMin:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 334
    .local v0, "p":I
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 335
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->getValueString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentProgress:I

    .line 337
    return-void
.end method

.method public setProgress(FZ)V
    .locals 2
    .param p1, "progress"    # F
    .param p2, "b"    # Z

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setProgress(F)V

    .line 405
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setEnableClick(Z)V

    .line 406
    if-eqz p2, :cond_0

    .line 407
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imgMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imgMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 343
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    .line 344
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->seekBarMin:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 345
    .local v0, "p":I
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 346
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentProgress:I

    .line 348
    return-void
.end method

.method public setRelayoutHeightParam(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlTittle:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 131
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 132
    return-void
.end method

.method public setSwitchButtonByNew()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 414
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->onOtherSelect()V

    .line 415
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setImgMenuVisiable(I)V

    .line 416
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setVisibility(I)V

    .line 417
    return-void
.end method

.method public setSwitchButtonState(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 393
    return-void
.end method

.method public setSwitchButtonVisibility()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setVisibility(I)V

    .line 421
    return-void
.end method

.method public setSwitchButtonVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setVisibility(I)V

    .line 385
    return-void
.end method

.method public setValueVisibily(IZ)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "b"    # Z

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    if-eqz p2, :cond_0

    .line 426
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imgMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imgMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setViewEnable(Z)V
    .locals 5
    .param p1, "b"    # Z

    .prologue
    const/16 v4, 0xff

    const/16 v3, 0x66

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3ecccccd    # 0.4f

    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vMinus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vPlus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlMinus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlPlus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setAlpha(F)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vMinus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vPlus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 249
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vMinus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 246
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vPlus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->na:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setViewEnableByMode(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x66

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    .line 199
    if-eqz p1, :cond_1

    .line 200
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentProgress:I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vMinus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vPlus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlMinus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->rlPlus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 214
    if-eqz p1, :cond_2

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setAlpha(F)V

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v3}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vMinus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vPlus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 226
    :goto_1
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setAlpha(F)V

    .line 221
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 222
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vMinus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 223
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->vPlus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method public switchUnityWithDistanceLimit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 292
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method public switchUnityWithSpeedLimit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 284
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->currentValue:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->accuracy:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method
