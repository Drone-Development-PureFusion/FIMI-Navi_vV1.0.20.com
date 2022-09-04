.class public Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;
.super Landroid/widget/RelativeLayout;
.source "X8ValueSeakBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;
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

.field confirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

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

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->suffix:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->title:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentProgress:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    .line 56
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MAX:I

    .line 57
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MIN:I

    .line 59
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    .line 64
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->isEnableClick:Z

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->readAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->na:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_value_seekbar_layout:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 107
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvTitle:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_value:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/fimi/app/x8s/R$id;->img_flag_menu:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imgMenu:Landroid/widget/ImageView;

    .line 110
    sget v0, Lcom/fimi/app/x8s/R$id;->view_minus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vMinus:Landroid/view/View;

    .line 111
    sget v0, Lcom/fimi/app/x8s/R$id;->view_plus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vPlus:Landroid/view/View;

    .line 112
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_confirm:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    .line 113
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    .line 115
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_flag_menu:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlFlagMenu:Landroid/view/View;

    .line 116
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_seekbar:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlSeekBar:Landroid/view/View;

    .line 117
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlMinus:Landroid/view/View;

    .line 118
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlPlus:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlMinus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlPlus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlFlagMenu:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlSeekBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->closeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MAX:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setMaxProgress(I)V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 132
    sget v0, Lcom/fimi/app/x8s/R$id;->swb_toggle:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/SwitchButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    .line 135
    return-void
.end method

.method private readAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 262
    sget-object v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_accuracy:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    .line 266
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->title:Ljava/lang/String;

    .line 267
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_suffix:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->suffix:Ljava/lang/String;

    .line 268
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_close_color:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->closeColor:I

    .line 269
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_open_color:I

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->openColor:I

    .line 270
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_seekbar_max:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMax:F

    .line 271
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_seekbar_min:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMin:F

    .line 272
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_seekbar_default:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarDefault:F

    .line 273
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8ValueSeakBarView_x8_value_seekbar_float:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->isFloat:Z

    .line 274
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->isFloat:Z

    if-eqz v1, :cond_0

    .line 277
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMax:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMin:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MAX:I

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMax:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMin:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MAX:I

    goto :goto_0
.end method

.method private resetView()V
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->isFloat:Z

    if-eqz v0, :cond_0

    .line 365
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentValue()F
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    return v0
.end method

.method public getValueString(I)Ljava/lang/String;
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/4 v6, 0x1

    .line 304
    iget-boolean v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->isFloat:Z

    if-eqz v4, :cond_2

    .line 305
    int-to-float v4, p1

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMin:F

    add-float v0, v4, v5

    .line 306
    .local v0, "p":F
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    .line 307
    const-string v1, ""

    .line 308
    .local v1, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->suffix:Ljava/lang/String;

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    move-object v3, v1

    .line 328
    .end local v0    # "p":F
    .end local v2    # "s":Ljava/lang/String;
    .local v3, "s":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 310
    .end local v3    # "s":Ljava/lang/String;
    .restart local v0    # "p":F
    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->suffix:Ljava/lang/String;

    const-string v5, "M/S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 313
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 318
    .end local v0    # "p":F
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    int-to-float v4, p1

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMin:F

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 319
    .local v0, "p":I
    int-to-float v4, v0

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    .line 320
    const-string v1, ""

    .line 321
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->suffix:Ljava/lang/String;

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    move-object v3, v1

    .line 328
    .end local v2    # "s":Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_1

    .line 323
    .end local v3    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->suffix:Ljava/lang/String;

    const-string v5, "M/S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 324
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 326
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public isEnableClick()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->isEnableClick:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 152
    .local v0, "id":I
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_menu:I

    if-ne v0, v2, :cond_3

    .line 153
    iget-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->isEnableClick:Z

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlSeekBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 157
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlSeekBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->openColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imgMenu:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 160
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->listener:Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->listener:Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;

    invoke-interface {v2, v4}, Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;->onSelect(Z)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    goto :goto_0

    .line 170
    :cond_3
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    if-ne v0, v2, :cond_5

    .line 171
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MIN:I

    if-eq v2, v3, :cond_0

    .line 172
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    sub-int v1, v2, v3

    .line 173
    .local v1, "s":I
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MIN:I

    if-ge v1, v2, :cond_4

    .line 174
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MIN:I

    .line 176
    :cond_4
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto :goto_0

    .line 178
    .end local v1    # "s":I
    :cond_5
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    if-ne v0, v2, :cond_7

    .line 179
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MAX:I

    if-eq v2, v3, :cond_0

    .line 180
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    add-int v1, v2, v3

    .line 181
    .restart local v1    # "s":I
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MAX:I

    if-le v1, v2, :cond_6

    .line 182
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->MAX:I

    .line 184
    :cond_6
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto :goto_0

    .line 186
    .end local v1    # "s":I
    :cond_7
    sget v2, Lcom/fimi/app/x8s/R$id;->imb_confirm:I

    if-ne v0, v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->confirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->confirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;->onConfirm(F)V

    goto/16 :goto_0
.end method

.method public onOtherSelect()V
    .locals 2

    .prologue
    .line 374
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentProgress:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->getValueString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentProgress:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlSeekBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->closeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imgMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 381
    return-void
.end method

.method public onProgress(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 2
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->getValueString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->historyProgress:I

    .line 75
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentProgress:I

    if-ne v0, p2, :cond_0

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStart(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 69
    return-void
.end method

.method public onStop(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 85
    return-void
.end method

.method public setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;)V
    .locals 0
    .param p1, "confirmListener"    # Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->confirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    .line 100
    return-void
.end method

.method public setEnableClick(Z)V
    .locals 0
    .param p1, "enableClick"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->isEnableClick:Z

    .line 94
    return-void
.end method

.method public setImbConfirmEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 197
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->historyProgress:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentProgress:I

    .line 198
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 199
    return-void
.end method

.method public setImgMenuVisiable(I)V
    .locals 1
    .param p1, "visiable"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imgMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;)V
    .locals 0
    .param p1, "ix8ValueSeakBarViewListener"    # Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->listener:Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;

    .line 385
    return-void
.end method

.method public setNoLimit()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imgMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 402
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 403
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_fly_distance_limit_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method

.method public setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/widget/SwitchButton$OnSwitchListener;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 393
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 336
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    .line 337
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMin:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 338
    .local v0, "p":I
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 339
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->getValueString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentProgress:I

    .line 341
    return-void
.end method

.method public setProgress(FZ)V
    .locals 2
    .param p1, "progress"    # F
    .param p2, "b"    # Z

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 409
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 410
    if-eqz p2, :cond_0

    .line 411
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imgMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imgMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 347
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    .line 348
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->seekBarMin:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 349
    .local v0, "p":I
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 350
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentProgress:I

    .line 352
    return-void
.end method

.method public setSwitchButtonByNew()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 418
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 419
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 420
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setVisibility(I)V

    .line 421
    return-void
.end method

.method public setSwitchButtonState(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 396
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 397
    return-void
.end method

.method public setSwitchButtonVisibility()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setVisibility(I)V

    .line 425
    return-void
.end method

.method public setSwitchButtonVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setVisibility(I)V

    .line 389
    return-void
.end method

.method public setValueVisibily(IZ)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "b"    # Z

    .prologue
    .line 428
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    if-eqz p2, :cond_0

    .line 430
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imgMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imgMenu:Landroid/widget/ImageView;

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

    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vMinus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vPlus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlMinus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlPlus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 241
    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setAlpha(F)V

    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vMinus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vPlus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vMinus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vPlus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->na:Ljava/lang/String;

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

    .line 203
    if-eqz p1, :cond_1

    .line 204
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentProgress:I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vMinus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vPlus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlMinus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->rlPlus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 218
    if-eqz p1, :cond_2

    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setAlpha(F)V

    .line 220
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v3}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 221
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vMinus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 222
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vPlus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    :goto_1
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->imbConfirm:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mSeekBar:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setAlpha(F)V

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchButton:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 226
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vMinus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 227
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->vPlus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method public switchUnityWithDistanceLimit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 296
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method

.method public switchUnityWithSpeedLimit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 288
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->mTvValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->currentValue:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->accuracy:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method
