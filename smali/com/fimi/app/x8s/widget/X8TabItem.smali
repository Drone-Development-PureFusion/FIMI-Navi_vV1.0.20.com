.class public Lcom/fimi/app/x8s/widget/X8TabItem;
.super Landroid/widget/LinearLayout;
.source "X8TabItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;
    }
.end annotation


# instance fields
.field private backBg:I

.field private curIndex:I

.field private lineColor:I

.field private lineStroke:I

.field private mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;

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
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8TabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/app/x8s/widget/X8TabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const v3, -0xffff01

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->backBg:I

    .line 136
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTabBg:I

    .line 141
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTabBg:I

    .line 148
    const/16 v0, 0x50

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->tabWidth:I

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->tabHeight:I

    .line 153
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTextColor:I

    .line 158
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTextColor:I

    .line 163
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textSize:F

    .line 168
    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->space:I

    .line 173
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    .line 178
    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    .line 183
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->setOrientation(I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8TabItem;->readAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->sove()V

    .line 48
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

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 275
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 277
    .restart local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    new-array v1, v2, [F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v2, v2

    aput v2, v1, v3

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v2, v2

    aput v2, v1, v5

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v2, v2

    aput v2, v1, v6

    const/4 v2, 0x3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 291
    :goto_0
    return-object v0

    .line 278
    :cond_0
    if-nez p1, :cond_1

    .line 279
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 281
    .restart local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    new-array v1, v2, [F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v2, v2

    aput v2, v1, v3

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

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

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 283
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 285
    .restart local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    new-array v1, v2, [F

    aput v4, v1, v3

    aput v4, v1, v5

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v2, v2

    aput v2, v1, v6

    const/4 v2, 0x3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v4, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 287
    :cond_2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 289
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

    .line 57
    sget-object v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_default_index:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    .line 62
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_radiusC:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8TabItem;->dpToPx(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    .line 63
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_bg:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->backBg:I

    .line 64
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_lineColor:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->lineColor:I

    .line 65
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_lineStroke:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->lineStroke:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8TabItem;->dpToPx(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->lineStroke:I

    .line 66
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_unselect_color:I

    const-string v5, "#51B5EF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTabBg:I

    .line 67
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_select_color:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTabBg:I

    .line 68
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_text_unselect_color:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTextColor:I

    .line 69
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_text_select_color:I

    const-string v5, "#51B5EF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTextColor:I

    .line 70
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_space:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->space:I

    .line 71
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_width:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->tabWidth:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8TabItem;->dpToPx(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->tabWidth:I

    .line 72
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_tab_height:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->tabHeight:I

    .line 73
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_text_sizeC:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textSize:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textSize:F

    .line 74
    sget v4, Lcom/fimi/app/x8s/R$styleable;->X8TabHost_src:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 75
    .local v1, "arr":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 76
    array-length v4, v1

    new-array v3, v4, [Ljava/lang/String;

    .line 77
    .local v3, "tArr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 78
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    .line 83
    .end local v2    # "i":I
    .end local v3    # "tArr":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private sove()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 191
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 193
    .local v1, "dd":Landroid/graphics/drawable/GradientDrawable;
    const/16 v5, 0x8

    new-array v5, v5, [F

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v6, v6

    aput v6, v5, v8

    const/4 v6, 0x1

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x4

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x6

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->radius:I

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 196
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->lineStroke:I

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->lineColor:I

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 198
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_3

    .line 199
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8TabItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->removeAllViews()V

    .line 207
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    if-gez v5, :cond_1

    .line 208
    :cond_0
    iput v8, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    .line 211
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 214
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v4, "tv":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v2, :cond_2

    .line 220
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->space:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 223
    :cond_2
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 226
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    if-ne v5, v2, :cond_4

    .line 227
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTabBg:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 234
    :goto_2
    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 238
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textSize:F

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 241
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_5

    .line 242
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 251
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8TabItem;->addView(Landroid/view/View;)V

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "i":I
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8TabItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 230
    .restart local v0    # "d":Landroid/graphics/drawable/GradientDrawable;
    .restart local v2    # "i":I
    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "tv":Landroid/widget/TextView;
    :cond_4
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTabBg:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 245
    :cond_5
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 261
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
    .line 395
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getResources()Landroid/content/res/Resources;

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
    .line 386
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    .local v0, "index":I
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;->onSelect(ILjava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 436
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 437
    const-string/jumbo v6, "zdy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "......"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getWidth()I

    move-result v6

    if-eqz v6, :cond_0

    .line 439
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    array-length v0, v6

    .line 440
    .local v0, "count":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 441
    .local v3, "p":Landroid/graphics/Paint;
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->lineColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 443
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    array-length v7, v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 444
    .local v5, "with":F
    const/4 v2, 0x0

    .line 445
    .local v2, "nPos":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 446
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 447
    .local v4, "r1":Landroid/graphics/RectF;
    int-to-float v6, v1

    mul-float v2, v5, v6

    .line 448
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->space:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    sub-float v6, v2, v6

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 449
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->space:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    add-float/2addr v6, v2

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 450
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->lineStroke:I

    add-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 451
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->lineStroke:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 452
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
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

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 93
    .local v3, "modeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 96
    .local v2, "modeHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 97
    .local v5, "sizeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 99
    .local v4, "sizeHeight":I
    if-ne v3, v9, :cond_2

    .line 111
    :cond_0
    if-ne v2, v9, :cond_3

    .line 124
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 126
    return-void

    .line 102
    :cond_2
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->tabWidth:I

    if-le v7, v8, :cond_0

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 105
    .local v6, "view":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->tabWidth:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "view":Landroid/widget/TextView;
    :cond_3
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->tabHeight:I

    if-le v7, v8, :cond_1

    .line 115
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 117
    .restart local v6    # "view":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->tabHeight:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public resetCurIndex()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    .line 466
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 460
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_0
    return-void
.end method

.method public setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;)V
    .locals 0
    .param p1, "mOnSelectListener"    # Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;

    .line 417
    return-void
.end method

.method public setSelect(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v3, 0x10

    .line 310
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    if-ne p1, v2, :cond_0

    .line 343
    :goto_0
    return-void

    .line 315
    :cond_0
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 317
    .local v1, "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 319
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTabBg:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 321
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 322
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    :goto_1
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    .line 332
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 334
    .restart local v1    # "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 336
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTabBg:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 337
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 338
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method spToPx(F)I
    .locals 2
    .param p1, "spVal"    # F

    .prologue
    .line 405
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TabItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public upSelect(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/16 v3, 0x10

    .line 347
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    if-ne p1, v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 354
    .local v1, "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 356
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->unSelectTabBg:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 358
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 359
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :goto_1
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    .line 369
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 371
    .restart local v1    # "tv":Landroid/widget/TextView;
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->curIndex:I

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8TabItem;->getFitGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 373
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->selectTabBg:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 374
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    .line 375
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 380
    :goto_2
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->mOnSelectListener:Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8TabItem;->textArr:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v2, p1, v3}, Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;->onSelect(ILjava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 378
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
