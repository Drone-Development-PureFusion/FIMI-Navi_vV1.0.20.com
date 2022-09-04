.class public Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;
.super Ljava/lang/Object;
.source "SpanClickHandler.java"


# instance fields
.field private highlightedClickableSpan:Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;

.field private layout:Landroid/text/Layout;

.field private left:F

.field private top:F

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/text/Layout;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layout"    # Landroid/text/Layout;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->view:Landroid/view/View;

    .line 64
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;Landroid/text/Layout;)Landroid/text/Layout;
    .locals 0
    .param p0, "x0"    # Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;
    .param p1, "x1"    # Landroid/text/Layout;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    return-object p1
.end method

.method static synthetic access$102(Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;F)F
    .locals 0
    .param p0, "x0"    # Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->left:F

    return p1
.end method

.method static synthetic access$202(Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;F)F
    .locals 0
    .param p0, "x0"    # Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->top:F

    return p1
.end method

.method private deselectSpan()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->highlightedClickableSpan:Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;

    .line 129
    .local v0, "selectedSpan":Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;->select(Z)V

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->highlightedClickableSpan:Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;

    .line 132
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->invalidate()V

    .line 134
    :cond_0
    return-void
.end method

.method public static enableClicksOnSpans(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;-><init>(Landroid/view/View;Landroid/text/Layout;)V

    .line 42
    .local v0, "helper":Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;
    new-instance v1, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler$1;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler$1;-><init>(Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    return-void
.end method

.method private invalidate()V
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->view:Landroid/view/View;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->left:F

    float-to-int v1, v1

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->top:F

    float-to-int v2, v2

    iget v3, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    .line 138
    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 137
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 139
    return-void
.end method

.method private selectSpan(Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;)V
    .locals 1
    .param p1, "span"    # Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;->select(Z)V

    .line 120
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->highlightedClickableSpan:Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;

    .line 121
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->invalidate()V

    .line 122
    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 74
    iget-object v11, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 75
    .local v6, "text":Ljava/lang/CharSequence;
    instance-of v11, v6, Landroid/text/Spanned;

    if-eqz v11, :cond_1

    check-cast v6, Landroid/text/Spanned;

    .end local v6    # "text":Ljava/lang/CharSequence;
    move-object v5, v6

    .line 76
    .local v5, "spannedText":Landroid/text/Spanned;
    :goto_0
    if-nez v5, :cond_2

    .line 112
    :cond_0
    :goto_1
    return v9

    .line 75
    .end local v5    # "spannedText":Landroid/text/Spanned;
    .restart local v6    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 80
    .end local v6    # "text":Ljava/lang/CharSequence;
    .restart local v5    # "spannedText":Landroid/text/Spanned;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    and-int/lit16 v0, v11, 0xff

    .line 81
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget v12, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->left:F

    sub-float/2addr v11, v12

    float-to-int v7, v11

    .line 82
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->top:F

    sub-float/2addr v11, v12

    float-to-int v8, v11

    .line 84
    .local v8, "y":I
    if-ltz v7, :cond_3

    iget-object v11, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    if-ge v7, v11, :cond_3

    if-ltz v8, :cond_3

    iget-object v11, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v11

    if-lt v8, v11, :cond_4

    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->deselectSpan()V

    goto :goto_1

    .line 90
    :cond_4
    iget-object v11, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    invoke-virtual {v11, v8}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 91
    .local v1, "line":I
    int-to-float v11, v7

    iget-object v12, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    invoke-virtual {v12, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_5

    int-to-float v11, v7

    iget-object v12, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    invoke-virtual {v12, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6

    .line 92
    :cond_5
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->deselectSpan()V

    goto :goto_1

    .line 96
    :cond_6
    if-nez v0, :cond_7

    .line 97
    iget-object v11, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->layout:Landroid/text/Layout;

    int-to-float v12, v7

    invoke-virtual {v11, v1, v12}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 98
    .local v2, "offset":I
    const-class v11, Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;

    invoke-interface {v5, v2, v2, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;

    .line 100
    .local v4, "span":[Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;
    array-length v11, v4

    if-lez v11, :cond_0

    .line 101
    aget-object v9, v4, v9

    invoke-direct {p0, v9}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->selectSpan(Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;)V

    move v9, v10

    .line 102
    goto :goto_1

    .line 104
    .end local v2    # "offset":I
    .end local v4    # "span":[Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;
    :cond_7
    if-ne v0, v10, :cond_0

    .line 105
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->highlightedClickableSpan:Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;

    .line 106
    .local v3, "selectedSpan":Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;
    if-eqz v3, :cond_0

    .line 107
    iget-object v9, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->view:Landroid/view/View;

    invoke-interface {v3, v9}, Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;->onClick(Landroid/view/View;)V

    .line 108
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->deselectSpan()V

    move v9, v10

    .line 109
    goto :goto_1
.end method
