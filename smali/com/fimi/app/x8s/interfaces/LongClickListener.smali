.class public abstract Lcom/fimi/app/x8s/interfaces/LongClickListener;
.super Ljava/lang/Object;
.source "LongClickListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private handler:Landroid/os/Handler;

.field private isClickDown:Z

.field private longClickRunnable:Ljava/lang/Runnable;

.field private viewId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->isClickDown:Z

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->handler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/fimi/app/x8s/interfaces/LongClickListener$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/interfaces/LongClickListener$1;-><init>(Lcom/fimi/app/x8s/interfaces/LongClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->longClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/interfaces/LongClickListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/interfaces/LongClickListener;

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->isClickDown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/interfaces/LongClickListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/interfaces/LongClickListener;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/interfaces/LongClickListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/interfaces/LongClickListener;

    .prologue
    .line 8
    iget v0, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->viewId:I

    return v0
.end method


# virtual methods
.method public abstract longClickCallback(I)V
.end method

.method public abstract onFingerUp(I)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->viewId:I

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 18
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 31
    :goto_0
    return v3

    .line 20
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->isClickDown:Z

    .line 21
    iget-object v1, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->longClickRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 25
    :pswitch_1
    iput-boolean v3, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->isClickDown:Z

    .line 26
    iget-object v1, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->longClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    iget v1, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener;->viewId:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/interfaces/LongClickListener;->onFingerUp(I)V

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
