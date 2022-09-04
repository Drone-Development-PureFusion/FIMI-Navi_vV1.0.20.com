.class public Lcom/fimi/app/x8s/widget/LabelsView;
.super Landroid/view/ViewGroup;
.source "LabelsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider;,
        Lcom/fimi/app/x8s/widget/LabelsView$OnLabelSelectChangeListener;,
        Lcom/fimi/app/x8s/widget/LabelsView$OnLabelClickListener;,
        Lcom/fimi/app/x8s/widget/LabelsView$SelectType;
    }
.end annotation


# static fields
.field private static final KEY_BG_RES_ID_STATE:Ljava/lang/String; = "key_bg_res_id_state"

.field private static final KEY_COMPULSORY_LABELS_STATE:Ljava/lang/String; = "key_select_compulsory_state"

.field private static final KEY_DATA:I

.field private static final KEY_LABELS_STATE:Ljava/lang/String; = "key_labels_state"

.field private static final KEY_LINE_MARGIN_STATE:Ljava/lang/String; = "key_line_margin_state"

.field private static final KEY_MAX_SELECT_STATE:Ljava/lang/String; = "key_max_select_state"

.field private static final KEY_PADDING_STATE:Ljava/lang/String; = "key_padding_state"

.field private static final KEY_POSITION:I

.field private static final KEY_SELECT_LABELS_STATE:Ljava/lang/String; = "key_select_labels_state"

.field private static final KEY_SELECT_TYPE_STATE:Ljava/lang/String; = "key_select_type_state"

.field private static final KEY_SUPER_STATE:Ljava/lang/String; = "key_super_state"

.field private static final KEY_TEXT_COLOR_STATE:Ljava/lang/String; = "key_text_color_state"

.field private static final KEY_TEXT_SIZE_STATE:Ljava/lang/String; = "key_text_size_state"

.field private static final KEY_WORD_MARGIN_STATE:Ljava/lang/String; = "key_word_margin_state"


# instance fields
.field private mCompulsorys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLabelBg:Landroid/graphics/drawable/Drawable;

.field private mLabelClickListener:Lcom/fimi/app/x8s/widget/LabelsView$OnLabelClickListener;

.field private mLabelSelectChangeListener:Lcom/fimi/app/x8s/widget/LabelsView$OnLabelSelectChangeListener;

.field private mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLineMargin:I

.field private mMaxSelect:I

.field private mSelectLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaddingBottom:I

.field private mTextPaddingLeft:I

.field private mTextPaddingRight:I

.field private mTextPaddingTop:I

.field private mTextSize:F

.field private mWordMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/fimi/app/x8s/R$id;->tag_key_data:I

    sput v0, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_DATA:I

    .line 47
    sget v0, Lcom/fimi/app/x8s/R$id;->tag_key_position:I

    sput v0, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_POSITION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabels:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    .line 95
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabels:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    .line 100
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/widget/LabelsView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabels:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    .line 106
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/widget/LabelsView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method private addLabel(Ljava/lang/Object;ILcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider;)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I",
            "Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p3, "provider":Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider;, "Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider<TT;>;"
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, "label":Landroid/widget/TextView;
    iget v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingLeft:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingTop:I

    iget v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingRight:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 412
    const/4 v1, 0x0

    iget v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 413
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextColor:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 416
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    sget v1, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_DATA:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 419
    sget v1, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_POSITION:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 420
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/LabelsView;->addView(Landroid/view/View;)V

    .line 422
    invoke-interface {p3, v0, p2, p1}, Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider;->getLabelText(Landroid/widget/TextView;ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    return-void

    .line 413
    :cond_0
    const/high16 v1, -0x1000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0
.end method

.method private clearNotCompulsorySelect()V
    .locals 5

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v0

    .line 499
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v2, "temps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 501
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 502
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelSelect(Landroid/widget/TextView;Z)V

    .line 503
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 508
    return-void
.end method

.method private ensureLabelClickable()V
    .locals 5

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v0

    .line 430
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 431
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 432
    .local v2, "label":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelClickListener:Lcom/fimi/app/x8s/widget/LabelsView$OnLabelClickListener;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v4, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->NONE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 434
    .end local v2    # "label":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 111
    if-eqz p2, :cond_0

    .line 112
    sget-object v4, Lcom/fimi/app/x8s/R$styleable;->labels_view:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 113
    .local v2, "mTypedArray":Landroid/content/res/TypedArray;
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_selectType:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 114
    .local v3, "type":I
    invoke-static {v3}, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->get(I)Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    .line 116
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_maxSelect:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mMaxSelect:I

    .line 117
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_labelTextColor:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 118
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_labelTextSize:I

    const/high16 v5, 0x41600000    # 14.0f

    .line 119
    invoke-static {p1, v5}, Lcom/fimi/app/x8s/widget/LabelsView;->sp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 118
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextSize:F

    .line 120
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_labelTextPaddingLeft:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingLeft:I

    .line 122
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_labelTextPaddingTop:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingTop:I

    .line 124
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_labelTextPaddingRight:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingRight:I

    .line 126
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_labelTextPaddingBottom:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingBottom:I

    .line 128
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_lineMargin:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLineMargin:I

    .line 129
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_wordMargin:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mWordMargin:I

    .line 130
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_labelBackground:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 131
    .local v1, "labelBgResId":I
    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelBg:Landroid/graphics/drawable/Drawable;

    .line 137
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    .end local v1    # "labelBgResId":I
    .end local v2    # "mTypedArray":Landroid/content/res/TypedArray;
    .end local v3    # "type":I
    :cond_0
    return-void

    .line 134
    .restart local v1    # "labelBgResId":I
    .restart local v2    # "mTypedArray":Landroid/content/res/TypedArray;
    .restart local v3    # "type":I
    :cond_1
    sget v4, Lcom/fimi/app/x8s/R$styleable;->labels_view_labelBackground:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 135
    .local v0, "labelBgColor":I
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private innerClearAllSelect()V
    .locals 4

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v0

    .line 491
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 492
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelSelect(Landroid/widget/TextView;Z)V

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 495
    return-void
.end method

.method private measureHeight(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "contentHeight"    # I

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 203
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 205
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 206
    move v0, v2

    .line 213
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 214
    return v0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 209
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 210
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "contentWidth"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 186
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 188
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 189
    move v0, v2

    .line 196
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 197
    return v0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 192
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 193
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private setLabelSelect(Landroid/widget/TextView;Z)V
    .locals 3
    .param p1, "label"    # Landroid/widget/TextView;
    .param p2, "isSelect"    # Z

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 463
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 464
    if-eqz p2, :cond_1

    .line 465
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    sget v0, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_POSITION:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelSelectChangeListener:Lcom/fimi/app/x8s/widget/LabelsView$OnLabelSelectChangeListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelSelectChangeListener:Lcom/fimi/app/x8s/widget/LabelsView$OnLabelSelectChangeListener;

    sget v0, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_DATA:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    sget v0, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_POSITION:I

    .line 471
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 470
    invoke-interface {v1, p1, v2, p2, v0}, Lcom/fimi/app/x8s/widget/LabelsView$OnLabelSelectChangeListener;->onLabelSelectChange(Landroid/widget/TextView;Ljava/lang/Object;ZI)V

    .line 474
    :cond_0
    return-void

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    sget v0, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_POSITION:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spVal"    # F

    .prologue
    .line 852
    const/4 v0, 0x2

    .line 853
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 852
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public clearAllSelect()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-eq v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->clearNotCompulsorySelect()V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->innerClearAllSelect()V

    goto :goto_0
.end method

.method public clearCompulsorys()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 605
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->innerClearAllSelect()V

    .line 607
    :cond_0
    return-void
.end method

.method public getCompulsorys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabelTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelTextSize()F
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextSize:F

    return v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLineMargin()I
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLineMargin:I

    return v0
.end method

.method public getMaxSelect()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mMaxSelect:I

    return v0
.end method

.method public getSelectLabelDatas()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 627
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 628
    iget-object v5, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 629
    .local v2, "label":Landroid/view/View;
    sget v5, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_DATA:I

    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 630
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 631
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "data":Ljava/lang/Object;
    .end local v2    # "label":Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method public getSelectLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectType()Lcom/fimi/app/x8s/widget/LabelsView$SelectType;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    return-object v0
.end method

.method public getTextPaddingBottom()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingBottom:I

    return v0
.end method

.method public getTextPaddingLeft()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingLeft:I

    return v0
.end method

.method public getTextPaddingRight()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingRight:I

    return v0
.end method

.method public getTextPaddingTop()I
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingTop:I

    return v0
.end method

.method public getWordMargin()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mWordMargin:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 438
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 439
    check-cast v0, Landroid/widget/TextView;

    .line 440
    .local v0, "label":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v2, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->NONE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-eq v1, v2, :cond_0

    .line 441
    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v2, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    sget v1, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_POSITION:I

    .line 443
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelSelect(Landroid/widget/TextView;Z)V

    .line 455
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelClickListener:Lcom/fimi/app/x8s/widget/LabelsView$OnLabelClickListener;

    if-eqz v1, :cond_1

    .line 456
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelClickListener:Lcom/fimi/app/x8s/widget/LabelsView$OnLabelClickListener;

    sget v1, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_DATA:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    sget v1, Lcom/fimi/app/x8s/widget/LabelsView;->KEY_POSITION:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v3, v1}, Lcom/fimi/app/x8s/widget/LabelsView$OnLabelClickListener;->onLabelClick(Landroid/widget/TextView;Ljava/lang/Object;I)V

    .line 459
    .end local v0    # "label":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 446
    .restart local v0    # "label":Landroid/widget/TextView;
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v2, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v2, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v1, v2, :cond_4

    .line 447
    :cond_3
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->innerClearAllSelect()V

    .line 448
    invoke-direct {p0, v0, v3}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelSelect(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 449
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v2, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mMaxSelect:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mMaxSelect:I

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    .line 450
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 451
    :cond_5
    invoke-direct {p0, v0, v3}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelSelect(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingLeft()I

    move-result v5

    .line 221
    .local v5, "x":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingTop()I

    move-result v6

    .line 223
    .local v6, "y":I
    sub-int v0, p4, p2

    .line 224
    .local v0, "contentWidth":I
    const/4 v3, 0x0

    .line 226
    .local v3, "maxItemHeight":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v1

    .line 227
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 228
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 230
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingLeft()I

    move-result v5

    .line 232
    iget v7, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLineMargin:I

    add-int/2addr v6, v7

    .line 233
    add-int/2addr v6, v3

    .line 234
    const/4 v3, 0x0

    .line 236
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 237
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 238
    iget v7, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mWordMargin:I

    add-int/2addr v5, v7

    .line 239
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v2

    .line 145
    .local v2, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getPaddingRight()I

    move-result v10

    sub-int v7, v9, v10

    .line 147
    .local v7, "maxWidth":I
    const/4 v1, 0x0

    .line 148
    .local v1, "contentHeight":I
    const/4 v4, 0x0

    .line 149
    .local v4, "lineWidth":I
    const/4 v6, 0x0

    .line 150
    .local v6, "maxLineWidth":I
    const/4 v5, 0x0

    .line 151
    .local v5, "maxItemHeight":I
    const/4 v0, 0x1

    .line 153
    .local v0, "begin":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 154
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 155
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8, p1, p2}, Lcom/fimi/app/x8s/widget/LabelsView;->measureChild(Landroid/view/View;II)V

    .line 157
    if-nez v0, :cond_1

    .line 158
    iget v9, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mWordMargin:I

    add-int/2addr v4, v9

    .line 163
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v4

    if-gt v7, v9, :cond_0

    .line 164
    iget v9, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLineMargin:I

    add-int/2addr v1, v9

    .line 165
    add-int/2addr v1, v5

    .line 166
    const/4 v5, 0x0

    .line 167
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 168
    const/4 v4, 0x0

    .line 169
    const/4 v0, 0x1

    .line 171
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 173
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v4, v9

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 176
    .end local v8    # "view":Landroid/view/View;
    :cond_2
    add-int/2addr v1, v5

    .line 177
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 179
    invoke-direct {p0, p1, v6}, Lcom/fimi/app/x8s/widget/LabelsView;->measureWidth(II)I

    move-result v9

    .line 180
    invoke-direct {p0, p2, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->measureHeight(II)I

    move-result v10

    .line 179
    invoke-virtual {p0, v9, v10}, Lcom/fimi/app/x8s/widget/LabelsView;->setMeasuredDimension(II)V

    .line 181
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 304
    instance-of v8, p1, Landroid/os/Bundle;

    if-eqz v8, :cond_5

    move-object v0, p1

    .line 305
    check-cast v0, Landroid/os/Bundle;

    .line 307
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "key_super_state"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-super {p0, v8}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 310
    const-string v8, "key_text_color_state"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 311
    .local v1, "color":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelTextColor(Landroid/content/res/ColorStateList;)V

    .line 315
    :cond_0
    const-string v8, "key_text_size_state"

    iget v9, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextSize:F

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelTextSize(F)V

    .line 322
    const-string v8, "key_padding_state"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 323
    .local v4, "padding":[I
    if-eqz v4, :cond_1

    array-length v8, v4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 324
    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v9, v4, v9

    const/4 v10, 0x2

    aget v10, v4, v10

    const/4 v11, 0x3

    aget v11, v4, v11

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelTextPadding(IIII)V

    .line 327
    :cond_1
    const-string v8, "key_word_margin_state"

    iget v9, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mWordMargin:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/LabelsView;->setWordMargin(I)V

    .line 329
    const-string v8, "key_line_margin_state"

    iget v9, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLineMargin:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/LabelsView;->setLineMargin(I)V

    .line 331
    const-string v8, "key_select_type_state"

    iget-object v9, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    iget v9, v9, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->value:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->get(I)Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/LabelsView;->setSelectType(Lcom/fimi/app/x8s/widget/LabelsView$SelectType;)V

    .line 333
    const-string v8, "key_max_select_state"

    iget v9, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mMaxSelect:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/LabelsView;->setMaxSelect(I)V

    .line 340
    const-string v8, "key_select_compulsory_state"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 341
    .local v2, "compulsory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 342
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/LabelsView;->setCompulsorys(Ljava/util/List;)V

    .line 345
    :cond_2
    const-string v8, "key_select_labels_state"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 346
    .local v6, "selectLabel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 347
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 348
    .local v7, "size":I
    new-array v5, v7, [I

    .line 349
    .local v5, "positions":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_3

    .line 350
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v3

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    :cond_3
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/LabelsView;->setSelects([I)V

    .line 357
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "color":Landroid/content/res/ColorStateList;
    .end local v2    # "compulsory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v4    # "padding":[I
    .end local v5    # "positions":[I
    .end local v6    # "selectLabel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "size":I
    :cond_4
    :goto_1
    return-void

    .line 356
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "key_super_state"

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 267
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 268
    const-string v1, "key_text_color_state"

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 271
    :cond_0
    const-string v1, "key_text_size_state"

    iget v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 275
    const-string v1, "key_padding_state"

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingLeft:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingTop:I

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingRight:I

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingBottom:I

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 278
    const-string v1, "key_word_margin_state"

    iget v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mWordMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string v1, "key_line_margin_state"

    iget v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLineMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v1, "key_select_type_state"

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    iget v2, v2, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->value:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v1, "key_max_select_state"

    iget v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mMaxSelect:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    const-string v1, "key_select_labels_state"

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 296
    const-string v1, "key_select_compulsory_state"

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    :cond_2
    return-object v0
.end method

.method public setCompulsorys(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 569
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->innerClearAllSelect()V

    .line 570
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/LabelsView;->setSelects(Ljava/util/List;)V

    .line 572
    :cond_0
    return-void
.end method

.method public varargs setCompulsorys([I)V
    .locals 5
    .param p1, "positions"    # [I

    .prologue
    .line 580
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v3, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_1

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 582
    .local v1, "ps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p1, v2

    .line 583
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->setCompulsorys(Ljava/util/List;)V

    .line 587
    .end local v1    # "ps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method public setLabelBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 652
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    return-void
.end method

.method public setLabelBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelBg:Landroid/graphics/drawable/Drawable;

    .line 662
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v0

    .line 663
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 664
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 665
    .local v2, "label":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    .end local v2    # "label":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setLabelBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 644
    return-void
.end method

.method public setLabelTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 734
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelTextColor(Landroid/content/res/ColorStateList;)V

    .line 735
    return-void
.end method

.method public setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 744
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v0

    .line 745
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 746
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 747
    .local v2, "label":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextColor:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    :cond_0
    const/high16 v3, -0x1000000

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_1

    .line 749
    .end local v2    # "label":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setLabelTextPadding(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 678
    iget v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingLeft:I

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingTop:I

    if-ne v3, p2, :cond_0

    iget v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingRight:I

    if-ne v3, p3, :cond_0

    iget v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingBottom:I

    if-eq v3, p4, :cond_1

    .line 680
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingLeft:I

    .line 681
    iput p2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingTop:I

    .line 682
    iput p3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingRight:I

    .line 683
    iput p4, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextPaddingBottom:I

    .line 684
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v0

    .line 685
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 686
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 687
    .local v2, "label":Landroid/widget/TextView;
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "label":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setLabelTextSize(F)V
    .locals 4
    .param p1, "size"    # F

    .prologue
    .line 714
    iget v3, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextSize:F

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_0

    .line 715
    iput p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mTextSize:F

    .line 716
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v0

    .line 717
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 718
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 719
    .local v2, "label":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "label":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/fimi/app/x8s/widget/LabelsView$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/LabelsView$1;-><init>(Lcom/fimi/app/x8s/widget/LabelsView;)V

    invoke-virtual {p0, p1, v0}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabels(Ljava/util/List;Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider;)V

    .line 371
    return-void
.end method

.method public setLabels(Ljava/util/List;Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "provider":Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider;, "Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider<TT;>;"
    const/4 v4, 0x0

    .line 382
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->innerClearAllSelect()V

    .line 383
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->removeAllViews()V

    .line 384
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 386
    if-eqz p1, :cond_1

    .line 387
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 388
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 389
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 390
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v0, p2}, Lcom/fimi/app/x8s/widget/LabelsView;->addLabel(Ljava/lang/Object;ILcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider;)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->ensureLabelClickable()V

    .line 395
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v3, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v2, v3, :cond_2

    .line 396
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v4, v2, v4

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/LabelsView;->setSelects([I)V

    .line 398
    :cond_2
    return-void
.end method

.method public setLineMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 759
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLineMargin:I

    if-eq v0, p1, :cond_0

    .line 760
    iput p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLineMargin:I

    .line 761
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->requestLayout()V

    .line 763
    :cond_0
    return-void
.end method

.method public setMaxSelect(I)V
    .locals 2
    .param p1, "maxSelect"    # I

    .prologue
    .line 816
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mMaxSelect:I

    if-eq v0, p1, :cond_0

    .line 817
    iput p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mMaxSelect:I

    .line 818
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v0, v1, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->innerClearAllSelect()V

    .line 823
    :cond_0
    return-void
.end method

.method public setOnLabelClickListener(Lcom/fimi/app/x8s/widget/LabelsView$OnLabelClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/app/x8s/widget/LabelsView$OnLabelClickListener;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelClickListener:Lcom/fimi/app/x8s/widget/LabelsView$OnLabelClickListener;

    .line 836
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->ensureLabelClickable()V

    .line 837
    return-void
.end method

.method public setOnLabelSelectChangeListener(Lcom/fimi/app/x8s/widget/LabelsView$OnLabelSelectChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/app/x8s/widget/LabelsView$OnLabelSelectChangeListener;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mLabelSelectChangeListener:Lcom/fimi/app/x8s/widget/LabelsView$OnLabelSelectChangeListener;

    .line 846
    return-void
.end method

.method public setSelectType(Lcom/fimi/app/x8s/widget/LabelsView$SelectType;)V
    .locals 3
    .param p1, "selectType"    # Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    .prologue
    const/4 v2, 0x0

    .line 789
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-eq v0, p1, :cond_2

    .line 790
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    .line 792
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->innerClearAllSelect()V

    .line 794
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v0, v1, :cond_0

    .line 795
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v2, v0, v2

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/LabelsView;->setSelects([I)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-eq v0, v1, :cond_1

    .line 799
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mCompulsorys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 802
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->ensureLabelClickable()V

    .line 804
    :cond_2
    return-void
.end method

.method public setSelects(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    .line 517
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 518
    .local v2, "size":I
    new-array v1, v2, [I

    .line 519
    .local v1, "ps":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 520
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->setSelects([I)V

    .line 524
    .end local v0    # "i":I
    .end local v1    # "ps":[I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

.method public varargs setSelects([I)V
    .locals 11
    .param p1, "positions"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 532
    iget-object v7, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v9, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->NONE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-eq v7, v9, :cond_6

    .line 533
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v4, "selectLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildCount()I

    move-result v0

    .line 535
    .local v0, "count":I
    iget-object v7, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v9, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-eq v7, v9, :cond_0

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mSelectType:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v9, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    if-ne v7, v9, :cond_4

    :cond_0
    move v5, v6

    .line 537
    .local v5, "size":I
    :goto_0
    array-length v9, p1

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_2

    aget v3, p1, v7

    .line 538
    .local v3, "p":I
    if-ge v3, v0, :cond_5

    .line 539
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 540
    .local v2, "label":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 541
    invoke-direct {p0, v2, v6}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelSelect(Landroid/widget/TextView;Z)V

    .line 542
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_1
    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v5, :cond_5

    .line 550
    .end local v2    # "label":Landroid/widget/TextView;
    .end local v3    # "p":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 551
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 552
    .restart local v2    # "label":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 553
    invoke-direct {p0, v2, v8}, Lcom/fimi/app/x8s/widget/LabelsView;->setLabelSelect(Landroid/widget/TextView;Z)V

    .line 550
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 535
    .end local v1    # "i":I
    .end local v2    # "label":Landroid/widget/TextView;
    .end local v5    # "size":I
    :cond_4
    iget v5, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mMaxSelect:I

    goto :goto_0

    .line 537
    .restart local v3    # "p":I
    .restart local v5    # "size":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 557
    .end local v0    # "count":I
    .end local v3    # "p":I
    .end local v4    # "selectLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .end local v5    # "size":I
    :cond_6
    return-void
.end method

.method public setWordMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 773
    iget v0, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mWordMargin:I

    if-eq v0, p1, :cond_0

    .line 774
    iput p1, p0, Lcom/fimi/app/x8s/widget/LabelsView;->mWordMargin:I

    .line 775
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/LabelsView;->requestLayout()V

    .line 777
    :cond_0
    return-void
.end method
