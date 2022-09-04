.class public Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;
.super Ljava/lang/Object;
.source "X8GestureDetector.java"


# instance fields
.field protected FLIP_DISTANCE:F

.field isOnFling:Z

.field mDetector:Landroid/view/GestureDetector;

.field private x8GestureListener:Lcom/fimi/app/x8s/interfaces/IX8GestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->FLIP_DISTANCE:F

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->isOnFling:Z

    .line 23
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;-><init>(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->mDetector:Landroid/view/GestureDetector;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)Lcom/fimi/app/x8s/interfaces/IX8GestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->x8GestureListener:Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 101
    .local v0, "b":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 102
    iget-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->isOnFling:Z

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->x8GestureListener:Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/fimi/app/x8s/interfaces/IX8GestureListener;->onInterestMetering(FF)V

    .line 105
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->isOnFling:Z

    .line 108
    :cond_1
    :goto_0
    return v0

    .line 106
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public setDistance(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 117
    int-to-float v0, p1

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->FLIP_DISTANCE:F

    .line 118
    return-void
.end method

.method public setX8GestureListener(Lcom/fimi/app/x8s/interfaces/IX8GestureListener;)V
    .locals 0
    .param p1, "x8GestureListener"    # Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->x8GestureListener:Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    .line 113
    return-void
.end method
