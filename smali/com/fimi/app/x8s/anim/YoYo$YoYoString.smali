.class public final Lcom/fimi/app/x8s/anim/YoYo$YoYoString;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/anim/YoYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YoYoString"
.end annotation


# instance fields
.field private animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

.field private target:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/fimi/app/x8s/anim/BaseViewAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "animator"    # Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;->target:Landroid/view/View;

    .line 220
    iput-object p1, p0, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/app/x8s/anim/BaseViewAnimator;Landroid/view/View;Lcom/fimi/app/x8s/anim/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/fimi/app/x8s/anim/YoYo$1;

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;-><init>(Lcom/fimi/app/x8s/anim/BaseViewAnimator;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;->stop(Z)V

    .line 233
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "reset"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->cancel()V

    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;->target:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->reset(Landroid/view/View;)V

    .line 240
    :cond_0
    return-void
.end method
