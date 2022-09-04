.class public abstract Lcom/fimi/widget/impl/NoDoubleClickListener;
.super Ljava/lang/Object;
.source "NoDoubleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private lastClickTime:J

.field public minClickDelayTime:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "minClickDelayTime"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fimi/widget/impl/NoDoubleClickListener;->minClickDelayTime:I

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/widget/impl/NoDoubleClickListener;->lastClickTime:J

    .line 17
    iput p1, p0, Lcom/fimi/widget/impl/NoDoubleClickListener;->minClickDelayTime:I

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 23
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/fimi/widget/impl/NoDoubleClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/fimi/widget/impl/NoDoubleClickListener;->minClickDelayTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 24
    iput-wide v0, p0, Lcom/fimi/widget/impl/NoDoubleClickListener;->lastClickTime:J

    .line 25
    invoke-virtual {p0, p1}, Lcom/fimi/widget/impl/NoDoubleClickListener;->onNoDoubleClick(Landroid/view/View;)V

    .line 27
    :cond_0
    return-void
.end method

.method protected abstract onNoDoubleClick(Landroid/view/View;)V
.end method
