.class public Lcom/fimi/app/x8s/tensortfloow/Overlay;
.super Landroid/view/View;
.source "Overlay.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;
    }
.end annotation


# instance fields
.field private MAX_HEIGHT:I

.field private MAX_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private enableCustomOverlay:Z

.field private endX:I

.field private endY:I

.field private isLost:Z

.field private isTracking:Z

.field private listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

.field private lostColor:I

.field private previewH:I

.field private previewW:I

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

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    const-class v0, Lcom/fimi/app/x8s/tensortfloow/Overlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    .line 18
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->enableCustomOverlay:Z

    .line 19
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isTracking:Z

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isLost:Z

    .line 22
    const v0, -0xf32993

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->selectedColor:I

    .line 23
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->lostColor:I

    .line 25
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->viewW:I

    .line 26
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->viewH:I

    .line 28
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    .line 29
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    .line 30
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    .line 31
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    .line 33
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    .line 35
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    .line 36
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    .line 39
    const/16 v0, 0x500

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewW:I

    .line 40
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewH:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    const-class v0, Lcom/fimi/app/x8s/tensortfloow/Overlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    .line 18
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->enableCustomOverlay:Z

    .line 19
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isTracking:Z

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isLost:Z

    .line 22
    const v0, -0xf32993

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->selectedColor:I

    .line 23
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->lostColor:I

    .line 25
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->viewW:I

    .line 26
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->viewH:I

    .line 28
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    .line 29
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    .line 30
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    .line 31
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    .line 33
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    .line 35
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    .line 36
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    .line 39
    const/16 v0, 0x500

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewW:I

    .line 40
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewH:I

    .line 76
    iput p2, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->viewW:I

    .line 77
    iput p3, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->viewH:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-class v0, Lcom/fimi/app/x8s/tensortfloow/Overlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    .line 18
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->enableCustomOverlay:Z

    .line 19
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isTracking:Z

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isLost:Z

    .line 22
    const v0, -0xf32993

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->selectedColor:I

    .line 23
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->lostColor:I

    .line 25
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->viewW:I

    .line 26
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->viewH:I

    .line 28
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    .line 29
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    .line 30
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    .line 31
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    .line 33
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    .line 35
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    .line 36
    iput v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    .line 39
    const/16 v0, 0x500

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewW:I

    .line 40
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewH:I

    .line 83
    return-void
.end method


# virtual methods
.method public cleanTrackerRect()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    .line 123
    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    .line 124
    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    .line 125
    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    .line 126
    invoke-virtual {p0}, Lcom/fimi/app/x8s/tensortfloow/Overlay;->postInvalidate()V

    .line 127
    return-void
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->MAX_HEIGHT:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->MAX_WIDTH:I

    return v0
.end method

.method public getTracking()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isTracking:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->enableCustomOverlay:Z

    if-nez v0, :cond_5

    .line 166
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 168
    .local v5, "p":Landroid/graphics/Paint;
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isTracking:Z

    if-nez v0, :cond_3

    .line 169
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->lostColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    if-gt v0, v1, :cond_1

    .line 172
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    .line 173
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    .line 179
    :goto_0
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    if-gt v0, v1, :cond_2

    .line 180
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    .line 181
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    .line 196
    :goto_1
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    int-to-float v1, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    int-to-float v1, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    int-to-float v1, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 199
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    int-to-float v1, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 223
    .end local v5    # "p":Landroid/graphics/Paint;
    :cond_0
    :goto_2
    return-void

    .line 175
    .restart local v5    # "p":Landroid/graphics/Paint;
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    .line 176
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    goto :goto_0

    .line 183
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    .line 184
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    goto :goto_1

    .line 187
    :cond_3
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isLost:Z

    if-nez v0, :cond_4

    .line 188
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->selectedColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 190
    :cond_4
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->lostColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 201
    .end local v5    # "p":Landroid/graphics/Paint;
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    if-eqz v0, :cond_0

    .line 202
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isTracking:Z

    if-nez v0, :cond_6

    .line 203
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    if-gt v0, v1, :cond_7

    .line 204
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    .line 205
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    .line 211
    :goto_3
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    if-gt v0, v1, :cond_8

    .line 212
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    .line 213
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    .line 219
    :cond_6
    :goto_4
    new-instance v6, Landroid/graphics/Rect;

    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    iget v2, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    iget v3, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    .local v6, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    iget-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isLost:Z

    invoke-interface {v0, p1, v6, v1}, Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    goto :goto_2

    .line 207
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_7
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    .line 208
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    goto :goto_3

    .line 215
    :cond_8
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    .line 216
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    goto :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 237
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 238
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->MAX_WIDTH:I

    .line 239
    iput p2, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->MAX_HEIGHT:I

    .line 241
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 134
    iget-object v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    invoke-interface {v4}, Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;->onTouchActionDown()V

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    iput v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    iput v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    .line 139
    invoke-virtual {p0}, Lcom/fimi/app/x8s/tensortfloow/Overlay;->invalidate()V

    .line 160
    :cond_0
    :goto_0
    return v6

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    .line 144
    invoke-virtual {p0}, Lcom/fimi/app/x8s/tensortfloow/Overlay;->invalidate()V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 146
    iget-object v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    if-eqz v4, :cond_0

    .line 149
    iget v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewW:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->MAX_WIDTH:I

    div-int v2, v4, v5

    .line 150
    .local v2, "preX":I
    iget v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewH:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->MAX_HEIGHT:I

    div-int v3, v4, v5

    .line 151
    .local v3, "preY":I
    iget v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x2:I

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->x1:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewW:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->MAX_WIDTH:I

    div-int v1, v4, v5

    .line 152
    .local v1, "preW":I
    iget v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y2:I

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->y1:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->previewH:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->MAX_HEIGHT:I

    div-int v0, v4, v5

    .line 154
    .local v0, "preH":I
    iget-object v4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;->onTouchActionUp(IIII)V

    goto :goto_0
.end method

.method public refreshTrackerRect(IIII)V
    .locals 0
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startX:I

    .line 115
    iput p2, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->startY:I

    .line 116
    iput p3, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endX:I

    .line 117
    iput p4, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->endY:I

    .line 118
    invoke-virtual {p0}, Lcom/fimi/app/x8s/tensortfloow/Overlay;->postInvalidate()V

    .line 119
    return-void
.end method

.method public setCustomOverlay(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->enableCustomOverlay:Z

    .line 91
    return-void
.end method

.method public setLost(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isLost:Z

    .line 103
    return-void
.end method

.method public setLostColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->lostColor:I

    .line 111
    return-void
.end method

.method public setOverlayListener(Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->listener:Lcom/fimi/app/x8s/tensortfloow/Overlay$OverlayListener;

    .line 87
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->selectedColor:I

    .line 107
    return-void
.end method

.method public setTracking(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/fimi/app/x8s/tensortfloow/Overlay;->isTracking:Z

    .line 95
    return-void
.end method
