.class public Lcom/fimi/app/x8s/widget/X8TabHost;
.super Landroid/widget/LinearLayout;
.source "X8TabHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;
    }
.end annotation


# instance fields
.field private backBg:I

.field private curIndex:I

.field private lastIndex:I

.field private lineColor:I

.field private lineStroke:I

.field private mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;

.field private radius:I

.field private selectTabBg:I

.field private selectTextColor:I

.field private space:I

.field private tabHeight:I

.field private tabWidth:I

.field private textArr:[Ljava/lang/String;

.field private textSize:F

.field private unSelectTabBg:I

.field private unSelectTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/app/x8s/widget/X8TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v4, -0xffff01

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->backBg:I

    .line 139
    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTabBg:I

    .line 144
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTabBg:I

    .line 151
    const/16 v0, 0x50

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->tabWidth:I

    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->tabHeight:I

    .line 156
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTextColor:I

    .line 161
    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTextColor:I

    .line 166
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textSize:F

    .line 171
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->space:I

    .line 176
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    .line 181
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    .line 182
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lastIndex:I

    .line 187
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOrientation(I)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8TabHost;->readAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->sove()V

    .line 51
    return-void
.end method

.method private getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 279
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 281
    .restart local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    new-array v1, v2, [F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v2, v2

    aput v2, v1, v3

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v2, v2

    aput v2, v1, v5

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v2, v2

    aput v2, v1, v6

    const/4 v2, 0x3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 295
    :goto_0
    return-object v0

    .line 282
    :cond_0
    if-nez p1, :cond_1

    .line 283
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 285
    .restart local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    new-array v1, v2, [F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v2, v2

    aput v2, v1, v3

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v2, v2

    aput v2, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    aput v4, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 287
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 289
    .restart local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    new-array v1, v2, [F

    aput v4, v1, v3

    aput v4, v1, v5

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v2, v2

    aput v2, v1, v6

    const/4 v2, 0x3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v4, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 291
    :cond_2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 293
    .restart local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private readAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, -0x1

    .line 60
    sget-object v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_default_index:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lastIndex:I

    .line 65
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_radiusC:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->dpToPx(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    .line 66
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_bg:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->backBg:I

    .line 67
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_lineColor:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lineColor:I

    .line 68
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_lineStroke:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lineStroke:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->dpToPx(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lineStroke:I

    .line 69
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_unselect_color:I

    const-string v5, "#51B5EF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTabBg:I

    .line 70
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_select_color:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTabBg:I

    .line 71
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_text_unselect_color:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTextColor:I

    .line 72
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_text_select_color:I

    const-string v5, "#51B5EF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTextColor:I

    .line 73
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_space:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->space:I

    .line 74
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_width:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->tabWidth:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->dpToPx(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->tabWidth:I

    .line 75
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_height:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->tabHeight:I

    .line 76
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_text_sizeC:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textSize:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textSize:F

    .line 77
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_src:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 78
    .local v1, "arr":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 79
    array-length v4, v1

    new-array v3, v4, [Ljava/lang/String;

    .line 80
    .local v3, "tArr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 81
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    .line 86
    .end local v2    # "i":I
    .end local v3    # "tArr":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method private sove()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 195
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 197
    .local v1, "dd":Landroid/graphics/drawable/GradientDrawable;
    const/16 v5, 0x8

    new-array v5, v5, [F

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v6, v6

    aput v6, v5, v8

    const/4 v6, 0x1

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x4

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x6

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 200
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lineStroke:I

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lineColor:I

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 202
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_3

    .line 203
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->removeAllViews()V

    .line 211
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    if-gez v5, :cond_1

    .line 212
    :cond_0
    iput v8, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    .line 215
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 218
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 221
    .local v4, "tv":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v2, :cond_2

    .line 224
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->space:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 227
    :cond_2
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 230
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    if-ne v5, v2, :cond_4

    .line 231
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTabBg:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 238
    :goto_2
    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 242
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textSize:F

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 245
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_5

    .line 246
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 255
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->addView(Landroid/view/View;)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "i":I
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 234
    .restart local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    .restart local v2    # "i":I
    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "tv":Landroid/widget/TextView;
    :cond_4
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTabBg:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 249
    :cond_5
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 265
    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_6
    return-void
.end method


# virtual methods
.method dpToPx(I)I
    .locals 2
    .param p1, "dps"    # I

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSelectIndex()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    .local v0, "index":I
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lastIndex:I

    .line 305
    .local v1, "last":I
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 307
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v0, v3, v1}, Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;->onSelect(ILjava/lang/String;I)V

    .line 311
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 441
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 442
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getWidth()I

    move-result v6

    if-eqz v6, :cond_0

    .line 443
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    array-length v0, v6

    .line 444
    .local v0, "count":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 445
    .local v3, "p":Landroid/graphics/Paint;
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lineColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    array-length v7, v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 448
    .local v5, "with":F
    const/4 v2, 0x0

    .line 449
    .local v2, "nPos":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 450
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 451
    .local v4, "r1":Landroid/graphics/RectF;
    int-to-float v6, v1

    mul-float v2, v5, v6

    .line 452
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->space:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float v6, v2, v6

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 453
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->space:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v6, v2

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 454
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lineStroke:I

    add-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 455
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lineStroke:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 456
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "nPos":F
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "r1":Landroid/graphics/RectF;
    .end local v5    # "with":F
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, -0x1

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 96
    .local v3, "modeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 99
    .local v2, "modeHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 100
    .local v5, "sizeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 102
    .local v4, "sizeHeight":I
    if-ne v3, v9, :cond_2

    .line 114
    :cond_0
    if-ne v2, v9, :cond_3

    .line 127
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 129
    return-void

    .line 105
    :cond_2
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->tabWidth:I

    if-le v7, v8, :cond_0

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 108
    .local v6, "view":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->tabWidth:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "view":Landroid/widget/TextView;
    :cond_3
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->tabHeight:I

    if-le v7, v8, :cond_1

    .line 118
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 119
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 120
    .restart local v6    # "view":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->tabHeight:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public resetCurIndex()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    .line 470
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 462
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 464
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-void
.end method

.method public setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V
    .locals 0
    .param p1, "mOnSelectListener"    # Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;

    .line 422
    return-void
.end method

.method public setSelect(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v3, 0x10

    .line 315
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    if-ne p1, v2, :cond_0

    .line 348
    :goto_0
    return-void

    .line 320
    :cond_0
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 322
    .local v1, "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 324
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTabBg:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 326
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 327
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 334
    :goto_1
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lastIndex:I

    .line 337
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 339
    .restart local v1    # "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 341
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTabBg:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 342
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 343
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 346
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method spToPx(F)I
    .locals 2
    .param p1, "spVal"    # F

    .prologue
    .line 410
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public upSelect(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "isSame"    # Z

    .prologue
    const/16 v3, 0x10

    .line 352
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 359
    .local v1, "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 361
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->unSelectTabBg:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 363
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 364
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 371
    :goto_1
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lastIndex:I

    .line 374
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 376
    .restart local v1    # "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->curIndex:I

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 378
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->selectTabBg:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 379
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    .line 380
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :goto_2
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->textArr:[Ljava/lang/String;

    aget-object v3, v3, p1

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8TabHost;->lastIndex:I

    invoke-interface {v2, p1, v3, v4}, Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;->onSelect(ILjava/lang/String;I)V

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 383
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
