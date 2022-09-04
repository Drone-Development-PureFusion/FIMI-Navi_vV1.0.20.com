.class public Lcom/fimi/app/x8s/widget/X8StaticCharEditText;
.super Landroid/widget/EditText;
.source "X8StaticCharEditText.java"


# instance fields
.field private fixedText:Ljava/lang/String;

.field private rightPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8StaticCharEditText;->fixedText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8StaticCharEditText;->fixedText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8StaticCharEditText;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8StaticCharEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8StaticCharEditText;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8StaticCharEditText;->getBaseline()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8StaticCharEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 29
    :cond_0
    return-void
.end method

.method public setFixedText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8StaticCharEditText;->fixedText:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8StaticCharEditText;->invalidate()V

    .line 20
    return-void
.end method
