.class public Lcom/fimi/widget/sticklistview/LetterSideBar;
.super Landroid/view/View;
.source "LetterSideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LetterSideBar"

.field public static mLetters:[Ljava/lang/String;


# instance fields
.field private mChooseIndex:I

.field private mLastChooseIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTextDialog:Landroid/widget/TextView;

.field private mUpdateIndex:I

.field private onTouchingLetterChangedListener:Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    iput v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mUpdateIndex:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mChooseIndex:I

    .line 27
    iput v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLastChooseIndex:I

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mUpdateIndex:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mChooseIndex:I

    .line 27
    iput v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLastChooseIndex:I

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mUpdateIndex:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mChooseIndex:I

    .line 27
    iput v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLastChooseIndex:I

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    .line 34
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 78
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 79
    .local v4, "y":F
    iget v3, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mChooseIndex:I

    .line 80
    .local v3, "oldChooseIndex":I
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->onTouchingLetterChangedListener:Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;

    .line 82
    .local v2, "listener":Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/LetterSideBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    sget-object v6, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 84
    .local v1, "chooseIndex":I
    packed-switch v0, :pswitch_data_0

    .line 95
    if-eq v3, v1, :cond_2

    .line 96
    if-ltz v1, :cond_2

    sget-object v5, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 97
    if-eqz v2, :cond_0

    .line 98
    sget-object v5, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v5, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mTextDialog:Landroid/widget/TextView;

    sget-object v6, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_1
    iput v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mChooseIndex:I

    .line 105
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/LetterSideBar;->invalidate()V

    .line 111
    :cond_2
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 86
    :pswitch_0
    const v5, 0x106000d

    invoke-virtual {p0, v5}, Lcom/fimi/widget/sticklistview/LetterSideBar;->setBackgroundResource(I)V

    .line 87
    const/4 v5, -0x1

    iput v5, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mChooseIndex:I

    .line 88
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/LetterSideBar;->invalidate()V

    .line 89
    iget-object v5, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 90
    iget-object v5, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/LetterSideBar;->getHeight()I

    move-result v0

    .line 48
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/LetterSideBar;->getWidth()I

    move-result v3

    .line 49
    .local v3, "width":I
    sget-object v6, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    array-length v6, v6

    div-int v2, v0, v6

    .line 51
    .local v2, "singleHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 53
    iget-object v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    iget-object v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    const-string v6, "LetterSideBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDraw: mChooseIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mChooseIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mChooseIndex:I

    if-eq v1, v6, :cond_0

    iget v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mUpdateIndex:I

    if-ne v6, v1, :cond_1

    .line 60
    :cond_0
    iget-object v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/LetterSideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/sdk/R$color;->fimisdk_letter_show:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 67
    :goto_1
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 68
    .local v4, "x":F
    mul-int v6, v2, v1

    add-int/2addr v6, v2

    int-to-float v5, v6

    .line 70
    .local v5, "y":F
    sget-object v6, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    iget-object v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    iget-object v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/LetterSideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/sdk/R$color;->fimisdk_letter_unshow:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v6, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_1

    .line 73
    :cond_2
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->onTouchingLetterChangedListener:Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;

    .line 121
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "mTextDialog"    # Landroid/widget/TextView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mTextDialog:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method public updateLetter(Ljava/lang/String;)V
    .locals 3
    .param p1, "updateLetter"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 129
    sget-object v1, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLetters:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iput v0, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mUpdateIndex:I

    .line 134
    :cond_0
    iget v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLastChooseIndex:I

    iget v2, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mUpdateIndex:I

    if-ne v1, v2, :cond_2

    .line 139
    :goto_1
    return-void

    .line 128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    iget v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mUpdateIndex:I

    iput v1, p0, Lcom/fimi/widget/sticklistview/LetterSideBar;->mLastChooseIndex:I

    .line 138
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/LetterSideBar;->invalidate()V

    goto :goto_1
.end method
