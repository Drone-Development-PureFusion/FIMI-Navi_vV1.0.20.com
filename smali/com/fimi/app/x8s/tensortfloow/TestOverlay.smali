.class public Lcom/fimi/app/x8s/tensortfloow/TestOverlay;
.super Landroid/view/View;
.source "TestOverlay.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/tensortfloow/TestOverlay$TestOverlayListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private enableCustomTestOverlay:Z

.field private endX:I

.field private endY:I

.field private isLost:Z

.field private isTracking:Z

.field private listener:Lcom/fimi/app/x8s/tensortfloow/TestOverlay$TestOverlayListener;

.field private lostColor:I

.field private mRectF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field rf:Landroid/graphics/RectF;

.field private selectedColor:I

.field private startX:I

.field private startY:I

.field private viewH:I

.field private viewW:I

.field private x1:I

.field private x2:I

.field private y1:I

.field private y2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const-class v0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->listener:Lcom/fimi/app/x8s/tensortfloow/TestOverlay$TestOverlayListener;

    .line 21
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->enableCustomTestOverlay:Z

    .line 22
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->isTracking:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->isLost:Z

    .line 25
    const v0, -0xf32993

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->selectedColor:I

    .line 26
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->lostColor:I

    .line 28
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->viewW:I

    .line 29
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->viewH:I

    .line 31
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->startX:I

    .line 32
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->startY:I

    .line 33
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->endX:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->endY:I

    .line 36
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->x1:I

    .line 37
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->y1:I

    .line 38
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->x2:I

    .line 39
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->y2:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->mRectF:Ljava/util/List;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const-class v0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->listener:Lcom/fimi/app/x8s/tensortfloow/TestOverlay$TestOverlayListener;

    .line 21
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->enableCustomTestOverlay:Z

    .line 22
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->isTracking:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->isLost:Z

    .line 25
    const v0, -0xf32993

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->selectedColor:I

    .line 26
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->lostColor:I

    .line 28
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->viewW:I

    .line 29
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->viewH:I

    .line 31
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->startX:I

    .line 32
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->startY:I

    .line 33
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->endX:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->endY:I

    .line 36
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->x1:I

    .line 37
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->y1:I

    .line 38
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->x2:I

    .line 39
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->y2:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->mRectF:Ljava/util/List;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    .line 75
    iput p2, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->viewW:I

    .line 76
    iput p3, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->viewH:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-class v0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->listener:Lcom/fimi/app/x8s/tensortfloow/TestOverlay$TestOverlayListener;

    .line 21
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->enableCustomTestOverlay:Z

    .line 22
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->isTracking:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->isLost:Z

    .line 25
    const v0, -0xf32993

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->selectedColor:I

    .line 26
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->lostColor:I

    .line 28
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->viewW:I

    .line 29
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->viewH:I

    .line 31
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->startX:I

    .line 32
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->startY:I

    .line 33
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->endX:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->endY:I

    .line 36
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->x1:I

    .line 37
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->y1:I

    .line 38
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->x2:I

    .line 39
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->y2:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->mRectF:Ljava/util/List;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    .line 82
    return-void
.end method


# virtual methods
.method public addRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->mRectF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->mRectF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 107
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 108
    .local v5, "p":Landroid/graphics/Paint;
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->lostColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    .end local v5    # "p":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public onTracking(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TestOverlay;->rf:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 128
    return-void
.end method
