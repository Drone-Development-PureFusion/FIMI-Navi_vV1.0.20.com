.class public Lcom/fimi/widget/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field mInnerColor:I

.field mOuterColor:I

.field m_TextPaint:Landroid/text/TextPaint;

.field private m_bDrawSideLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outerColor"    # I
    .param p3, "innnerColor"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/widget/StrokeTextView;->m_bDrawSideLine:Z

    .line 28
    invoke-virtual {p0}, Lcom/fimi/widget/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    .line 29
    iput p3, p0, Lcom/fimi/widget/StrokeTextView;->mInnerColor:I

    .line 30
    iput p2, p0, Lcom/fimi/widget/StrokeTextView;->mOuterColor:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/widget/StrokeTextView;->m_bDrawSideLine:Z

    .line 37
    invoke-virtual {p0}, Lcom/fimi/widget/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    .line 39
    sget-object v1, Lcom/fimi/sdk/R$styleable;->StrokeTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/sdk/R$styleable;->StrokeTextView_innnerColor:I

    const v2, 0xffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/StrokeTextView;->mInnerColor:I

    .line 42
    sget v1, Lcom/fimi/sdk/R$styleable;->StrokeTextView_outerColor:I

    const/high16 v2, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/StrokeTextView;->mOuterColor:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "outerColor"    # I
    .param p5, "innnerColor"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/widget/StrokeTextView;->m_bDrawSideLine:Z

    .line 48
    invoke-virtual {p0}, Lcom/fimi/widget/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    .line 49
    iput p5, p0, Lcom/fimi/widget/StrokeTextView;->mInnerColor:I

    .line 50
    iput p4, p0, Lcom/fimi/widget/StrokeTextView;->mOuterColor:I

    .line 52
    return-void
.end method

.method private setTextColorUseReflection(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 91
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mCurTextColor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 92
    .local v1, "textColorField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    .end local v1    # "textColorField":Ljava/lang/reflect/Field;
    :goto_0
    iget-object v2, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 103
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-boolean v0, p0, Lcom/fimi/widget/StrokeTextView;->m_bDrawSideLine:Z

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/fimi/widget/StrokeTextView;->mOuterColor:I

    invoke-direct {p0, v0}, Lcom/fimi/widget/StrokeTextView;->setTextColorUseReflection(I)V

    .line 65
    iget-object v0, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 66
    iget-object v0, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 69
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget v0, p0, Lcom/fimi/widget/StrokeTextView;->mInnerColor:I

    invoke-direct {p0, v0}, Lcom/fimi/widget/StrokeTextView;->setTextColorUseReflection(I)V

    .line 75
    iget-object v0, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/fimi/widget/StrokeTextView;->m_TextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    return-void
.end method
