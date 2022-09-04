.class public Lcom/fimi/app/x8s/widget/X8TrackOverlayView;
.super Landroid/view/View;
.source "X8TrackOverlayView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;
    }
.end annotation


# instance fields
.field final MARGING_TOP:I

.field private MAX_HEIGHT:I

.field final MAX_PATH:I

.field private MAX_UNSIGNED_SHORT:I

.field private MAX_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private d:F

.field private enableCustomOverlay:Z

.field private endX:F

.field private endY:F

.field private errorMsg:Ljava/lang/String;

.field public hasTouch:Z

.field initialValue:I

.field private isClean:Z

.field private isErrorSelect:Z

.field private isLost:Z

.field private isTracking:Z

.field private k:I

.field private listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

.field private lostColor:I

.field private lostfillColor:I

.field private lostfillErrorColor:I

.field private mBounds:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;

.field private p:Landroid/graphics/Paint;

.field private previewH:I

.field private previewH2:I

.field private previewW:I

.field private previewW2:I

.field private r1:Landroid/graphics/RectF;

.field private r2:Landroid/graphics/RectF;

.field public selectedColor:I

.field private selectedErrorColor:I

.field private startX:F

.field private startY:F

.field private viewH:I

.field private viewW:I

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const-class v0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    .line 23
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->enableCustomOverlay:Z

    .line 24
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isTracking:Z

    .line 25
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isLost:Z

    .line 26
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isClean:Z

    .line 33
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->viewW:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->viewH:I

    .line 36
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    .line 37
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    .line 38
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    .line 39
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    .line 41
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    .line 42
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    .line 43
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    .line 44
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    .line 45
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->hasTouch:Z

    .line 46
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    .line 49
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isErrorSelect:Z

    .line 54
    const/16 v0, 0x500

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewW:I

    .line 55
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewH:I

    .line 59
    const v0, 0xffff

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_UNSIGNED_SHORT:I

    .line 61
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r2:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r1:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    .line 69
    const/16 v0, 0x68

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_PATH:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mBounds:Landroid/graphics/Rect;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    .line 74
    const/16 v0, 0x14

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MARGING_TOP:I

    .line 233
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewW2:I

    .line 234
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewH2:I

    .line 425
    new-instance v0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$1;-><init>(Lcom/fimi/app/x8s/widget/X8TrackOverlayView;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mHandler:Landroid/os/Handler;

    .line 105
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initView()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const-class v0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    .line 23
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->enableCustomOverlay:Z

    .line 24
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isTracking:Z

    .line 25
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isLost:Z

    .line 26
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isClean:Z

    .line 33
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->viewW:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->viewH:I

    .line 36
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    .line 37
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    .line 38
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    .line 39
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    .line 41
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    .line 42
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    .line 43
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    .line 44
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    .line 45
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->hasTouch:Z

    .line 46
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    .line 49
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isErrorSelect:Z

    .line 54
    const/16 v0, 0x500

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewW:I

    .line 55
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewH:I

    .line 59
    const v0, 0xffff

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_UNSIGNED_SHORT:I

    .line 61
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r2:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r1:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    .line 69
    const/16 v0, 0x68

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_PATH:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mBounds:Landroid/graphics/Rect;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    .line 74
    const/16 v0, 0x14

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MARGING_TOP:I

    .line 233
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewW2:I

    .line 234
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewH2:I

    .line 425
    new-instance v0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$1;-><init>(Lcom/fimi/app/x8s/widget/X8TrackOverlayView;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mHandler:Landroid/os/Handler;

    .line 112
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->viewW:I

    .line 113
    iput p3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->viewH:I

    .line 114
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initView()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-class v0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    .line 23
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->enableCustomOverlay:Z

    .line 24
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isTracking:Z

    .line 25
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isLost:Z

    .line 26
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isClean:Z

    .line 33
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->viewW:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->viewH:I

    .line 36
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    .line 37
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    .line 38
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    .line 39
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    .line 41
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    .line 42
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    .line 43
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    .line 44
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    .line 45
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->hasTouch:Z

    .line 46
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    .line 49
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isErrorSelect:Z

    .line 54
    const/16 v0, 0x500

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewW:I

    .line 55
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewH:I

    .line 59
    const v0, 0xffff

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_UNSIGNED_SHORT:I

    .line 61
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r2:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r1:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    .line 69
    const/16 v0, 0x68

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_PATH:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mBounds:Landroid/graphics/Rect;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    .line 74
    const/16 v0, 0x14

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MARGING_TOP:I

    .line 233
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewW2:I

    .line 234
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->previewH2:I

    .line 425
    new-instance v0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$1;-><init>(Lcom/fimi/app/x8s/widget/X8TrackOverlayView;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mHandler:Landroid/os/Handler;

    .line 120
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initView()V

    .line 121
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_track_select:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->selectedColor:I

    .line 133
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_track_lost:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostColor:I

    .line 134
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_track_fill_lost:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostfillColor:I

    .line 136
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_track_select_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->selectedErrorColor:I

    .line 137
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_track_fill_lost_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostfillErrorColor:I

    .line 139
    return-void
.end method


# virtual methods
.method public changeXY()V
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 280
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    .line 281
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    .line 287
    :goto_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 288
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    .line 289
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    .line 294
    :goto_1
    return-void

    .line 283
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    .line 284
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    goto :goto_0

    .line 291
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    .line 292
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    goto :goto_1
.end method

.method public cleanTrackerRect()V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->hasTouch:Z

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    .line 177
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    .line 178
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    .line 179
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    .line 180
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    .line 181
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->selectedColor:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setLostColor(I)V

    .line 182
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->postInvalidate()V

    goto :goto_0
.end method

.method public drawRect(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isErrorSelect:Z

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostfillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 306
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r1:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 307
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r1:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 308
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r1:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 309
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r1:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 313
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isErrorSelect:Z

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 319
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 320
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 322
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r2:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 323
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r2:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 324
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r2:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 325
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r2:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 326
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->r2:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 329
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostfillErrorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->selectedErrorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method public drawText(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 401
    iget-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isErrorSelect:Z

    if-nez v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 406
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 407
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v1, v2

    .line 408
    .local v1, "textWidth":F
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v0, v2

    .line 409
    .local v0, "textHeight":F
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    div-float v4, v1, v7

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_HEIGHT:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_WIDTH:I

    return v0
.end method

.method public getTracking()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isTracking:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isTracking:Z

    if-nez v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->changeXY()V

    .line 261
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->drawRect(Landroid/graphics/Canvas;)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->onDrawPath(Landroid/graphics/Canvas;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isTracking:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->drawRect(Landroid/graphics/Canvas;)V

    .line 270
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->onDrawPath(Landroid/graphics/Canvas;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->drawText(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getHeight()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;->onChangeGoLocation(FFFFII)V

    goto :goto_0
.end method

.method public onDrawPath(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x42500000    # 52.0f

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v11, 0x3fc00000    # 1.5f

    .line 334
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v9

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    .line 336
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_0

    .line 337
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x42d00000    # 104.0f

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isErrorSelect:Z

    if-nez v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 345
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 347
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v12

    if-lez v0, :cond_3

    .line 348
    const/4 v0, 0x6

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    .line 352
    :goto_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    if-ge v10, v0, :cond_4

    .line 353
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    add-float/2addr v0, v2

    int-to-float v2, v10

    mul-float/2addr v2, v11

    add-float v1, v0, v2

    .line 354
    .local v1, "xd1":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    sub-float/2addr v0, v2

    int-to-float v2, v10

    mul-float/2addr v2, v11

    sub-float v3, v0, v2

    .line 355
    .local v3, "xd2":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    .line 356
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    int-to-float v2, v10

    add-float/2addr v2, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    int-to-float v4, v10

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 342
    .end local v1    # "xd1":F
    .end local v3    # "xd2":F
    .end local v10    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->selectedErrorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 350
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    goto :goto_1

    .line 360
    .restart local v10    # "i":I
    :cond_4
    const/4 v10, 0x0

    :goto_3
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    if-ge v10, v0, :cond_6

    .line 361
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    add-float/2addr v0, v2

    int-to-float v2, v10

    mul-float/2addr v2, v11

    add-float v1, v0, v2

    .line 362
    .restart local v1    # "xd1":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    sub-float/2addr v0, v2

    int-to-float v2, v10

    mul-float/2addr v2, v11

    sub-float v3, v0, v2

    .line 363
    .restart local v3    # "xd2":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_5

    .line 364
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    int-to-float v2, v10

    sub-float v2, v0, v2

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    int-to-float v4, v10

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 368
    .end local v1    # "xd1":F
    .end local v3    # "xd2":F
    :cond_6
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v9

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    .line 370
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_7

    .line 371
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x42d00000    # 104.0f

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    .line 374
    :cond_7
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v12

    if-lez v0, :cond_9

    .line 375
    const/4 v0, 0x6

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    .line 379
    :goto_4
    const/4 v10, 0x0

    :goto_5
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    if-ge v10, v0, :cond_a

    .line 380
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    add-float/2addr v0, v2

    int-to-float v2, v10

    mul-float/2addr v2, v11

    add-float v6, v0, v2

    .line 381
    .local v6, "yd1":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    sub-float/2addr v0, v2

    int-to-float v2, v10

    mul-float/2addr v2, v11

    sub-float v8, v0, v2

    .line 382
    .local v8, "yd2":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    cmpg-float v0, v6, v0

    if-gez v0, :cond_8

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    cmpl-float v0, v8, v0

    if-lez v0, :cond_8

    .line 383
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    int-to-float v2, v10

    add-float v5, v0, v2

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    int-to-float v2, v10

    add-float v7, v0, v2

    iget-object v9, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 379
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 377
    .end local v6    # "yd1":F
    .end local v8    # "yd2":F
    :cond_9
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    goto :goto_4

    .line 387
    :cond_a
    const/4 v10, 0x0

    :goto_6
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->k:I

    if-ge v10, v0, :cond_c

    .line 388
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    add-float/2addr v0, v2

    int-to-float v2, v10

    mul-float/2addr v2, v11

    add-float v6, v0, v2

    .line 389
    .restart local v6    # "yd1":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->d:F

    sub-float/2addr v0, v2

    int-to-float v2, v10

    mul-float/2addr v2, v11

    sub-float v8, v0, v2

    .line 390
    .restart local v8    # "yd2":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    cmpg-float v0, v6, v0

    if-gez v0, :cond_b

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    cmpl-float v0, v8, v0

    if-lez v0, :cond_b

    .line 391
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    int-to-float v2, v10

    sub-float v5, v0, v2

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    int-to-float v2, v10

    sub-float v7, v0, v2

    iget-object v9, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->p:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 387
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 394
    .end local v6    # "yd1":F
    .end local v8    # "yd2":F
    :cond_c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 437
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 440
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 441
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_WIDTH:I

    .line 442
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_HEIGHT:I

    .line 444
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iput-boolean v10, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->hasTouch:Z

    .line 192
    invoke-virtual {p0, v9}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setTracking(Z)V

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->selectedColor:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostColor:I

    .line 196
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    .line 197
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    .line 198
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    .line 199
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->initialValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;->onTouchActionDown()V

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    .line 205
    iput-boolean v9, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isErrorSelect:Z

    .line 206
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->invalidate()V

    .line 229
    :cond_1
    :goto_0
    return v10

    .line 207
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    .line 211
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->invalidate()V

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    float-to-int v5, v5

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    float-to-int v6, v6

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    float-to-int v7, v7

    iget v8, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    float-to-int v8, v8

    invoke-interface/range {v0 .. v8}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;->onTouchActionUp(FFFFIIII)V

    .line 225
    :cond_4
    iput-boolean v9, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->hasTouch:Z

    goto :goto_0
.end method

.method public onTracking(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 238
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->hasTouch:Z

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_WIDTH:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_HEIGHT:I

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setTracking(Z)V

    .line 245
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->selectedColor:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostColor:I

    .line 246
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_WIDTH:I

    mul-int/2addr v0, p1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    .line 247
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x1:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_WIDTH:I

    mul-int/2addr v1, p3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_UNSIGNED_SHORT:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->x2:F

    .line 248
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_HEIGHT:I

    mul-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    .line 249
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y1:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_HEIGHT:I

    mul-int/2addr v1, p4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->MAX_UNSIGNED_SHORT:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->y2:F

    .line 251
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->postInvalidate()V

    goto :goto_0
.end method

.method public refreshTrackerRect(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->hasTouch:Z

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startX:F

    .line 166
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->startY:F

    .line 167
    iput p3, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endX:F

    .line 168
    iput p4, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->endY:F

    .line 169
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->postInvalidate()V

    goto :goto_0
.end method

.method public setCustomOverlay(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->enableCustomOverlay:Z

    .line 129
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 420
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->errorMsg:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 424
    return-void
.end method

.method public setLost(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isLost:Z

    .line 151
    return-void
.end method

.method public setLostColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->lostColor:I

    .line 159
    return-void
.end method

.method public setOverlayListener(Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->listener:Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;

    .line 125
    return-void
.end method

.method public setSelectError(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isErrorSelect:Z

    .line 398
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->selectedColor:I

    .line 155
    return-void
.end method

.method public setTracking(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->isTracking:Z

    .line 143
    return-void
.end method
