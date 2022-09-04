.class public Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;
.super Landroid/widget/TextView;
.source "X8DinaStrokeTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private borderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    .line 28
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    .line 34
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    .line 41
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 47
    .local v0, "tp1":Landroid/text/TextPaint;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 48
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    const/high16 v2, 0x33000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->getGravity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/FontUtil;->changeDINAlernateBold(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 53
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 66
    .local v0, "tt":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->postInvalidate()V

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 71
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->measure(II)V

    .line 72
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DinaStrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method
