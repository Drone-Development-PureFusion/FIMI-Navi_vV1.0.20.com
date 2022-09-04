.class public Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# static fields
.field static final ADJUST_DIMENSION_HEIGHT:I = 0x0

.field static final ADJUST_DIMENSION_WIDTH:I = 0x1

.field private static final DEFAULT_ADJUST_DIMENSION:I = 0x0

.field private static final DEFAULT_ASPECT_RATIO:F = 1.0f


# instance fields
.field protected aspectRatio:D

.field private dimensionToAdjust:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p3}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->initAttributes(I)V

    .line 50
    return-void
.end method

.method private initAttributes(I)V
    .locals 4
    .param p1, "styleResId"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/twitter/sdk/android/tweetui/R$styleable;->AspectRatioFrameLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/twitter/sdk/android/tweetui/R$styleable;->AspectRatioFrameLayout_tw__frame_layout_aspect_ratio:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->aspectRatio:D

    .line 59
    sget v1, Lcom/twitter/sdk/android/tweetui/R$styleable;->AspectRatioFrameLayout_tw__frame_layout_dimension_to_adjust:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->dimensionToAdjust:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 75
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getPaddingRight()I

    move-result v5

    add-int v1, v4, v5

    .line 76
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getPaddingTop()I

    move-result v5

    add-int v2, v4, v5

    .line 78
    .local v2, "verticalPadding":I
    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->dimensionToAdjust:I

    if-nez v4, :cond_1

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int v3, v4, v1

    .line 85
    .local v3, "width":I
    :goto_0
    int-to-double v4, v3

    iget-wide v6, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->aspectRatio:D

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 96
    .local v0, "height":I
    :goto_1
    add-int v4, v3, v1

    .line 97
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    add-int v5, v0, v2

    .line 98
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 96
    invoke-super {p0, v4, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 99
    return-void

    .line 82
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 83
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int v3, v4, v1

    .restart local v3    # "width":I
    goto :goto_0

    .line 87
    .end local v3    # "width":I
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 88
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int v0, v4, v2

    .line 93
    .restart local v0    # "height":I
    :goto_2
    int-to-double v4, v0

    iget-wide v6, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->aspectRatio:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .restart local v3    # "width":I
    goto :goto_1

    .line 90
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 91
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int v0, v4, v2

    .restart local v0    # "height":I
    goto :goto_2
.end method

.method public setAspectRatio(D)V
    .locals 1
    .param p1, "aspectRatio"    # D

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->aspectRatio:D

    .line 69
    return-void
.end method
