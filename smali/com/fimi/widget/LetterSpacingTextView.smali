.class public Lcom/fimi/widget/LetterSpacingTextView;
.super Landroid/widget/TextView;
.source "LetterSpacingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/widget/LetterSpacingTextView$Spacing;
    }
.end annotation


# instance fields
.field private spacing:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/widget/LetterSpacingTextView;->spacing:F

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/widget/LetterSpacingTextView;->spacing:F

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/widget/LetterSpacingTextView;->spacing:F

    .line 30
    return-void
.end method

.method private applySpacing()V
    .locals 7

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/fimi/widget/LetterSpacingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 47
    .local v3, "originalText":Ljava/lang/CharSequence;
    if-eqz p0, :cond_0

    if-nez v3, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 50
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 52
    const-string/jumbo v4, "\u00a0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    .local v1, "finalText":Landroid/text/SpannableString;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 57
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 58
    new-instance v4, Landroid/text/style/ScaleXSpan;

    iget v5, p0, Lcom/fimi/widget/LetterSpacingTextView;->spacing:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-direct {v4, v5}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x21

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 57
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 61
    :cond_4
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method


# virtual methods
.method public dip2px(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/fimi/widget/LetterSpacingTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 42
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getSpacing()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/widget/LetterSpacingTextView;->spacing:F

    return v0
.end method

.method public setSpacing(F)V
    .locals 1
    .param p1, "spacing"    # F

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/fimi/widget/LetterSpacingTextView;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/widget/LetterSpacingTextView;->spacing:F

    .line 38
    invoke-direct {p0}, Lcom/fimi/widget/LetterSpacingTextView;->applySpacing()V

    .line 39
    return-void
.end method
