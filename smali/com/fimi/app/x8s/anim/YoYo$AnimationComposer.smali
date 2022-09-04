.class public final Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/anim/YoYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationComposer"
.end annotation


# instance fields
.field private animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private delay:J

.field private duration:J

.field private interpolator:Landroid/view/animation/Interpolator;

.field private pivotX:F

.field private pivotY:F

.field private repeat:Z

.field private repeatMode:I

.field private repeatTimes:I

.field private target:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/anim/BaseViewAnimator;)V
    .locals 4
    .param p1, "animator"    # Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    .line 99
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->duration:J

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->delay:J

    .line 102
    iput-boolean v3, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeat:Z

    .line 103
    iput v3, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeatTimes:I

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeatMode:I

    .line 105
    iput v2, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivotX:F

    iput v2, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivotY:F

    .line 110
    iput-object p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->duration:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->target:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->delay:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeat:Z

    return v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeatTimes:I

    return v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeatMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivotX:F

    return v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivotY:F

    return v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public delay(J)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->delay:J

    .line 120
    return-object p0
.end method

.method public duration(J)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->duration:J

    .line 115
    return-object p0
.end method

.method public interpolate(Landroid/view/animation/Interpolator;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->interpolator:Landroid/view/animation/Interpolator;

    .line 125
    return-object p0
.end method

.method public onCancel(Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 2
    .param p1, "callback"    # Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$3;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$3;-><init>(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object p0
.end method

.method public onEnd(Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 2
    .param p1, "callback"    # Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$2;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$2;-><init>(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-object p0
.end method

.method public onRepeat(Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 2
    .param p1, "callback"    # Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$4;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$4;-><init>(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-object p0
.end method

.method public onStart(Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 2
    .param p1, "callback"    # Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$1;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer$1;-><init>(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-object p0
.end method

.method public pivot(FF)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 0
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    .line 129
    iput p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivotX:F

    .line 130
    iput p2, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivotY:F

    .line 131
    return-object p0
.end method

.method public pivotX(F)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 0
    .param p1, "pivotX"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivotX:F

    .line 136
    return-object p0
.end method

.method public pivotY(F)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 0
    .param p1, "pivotY"    # F

    .prologue
    .line 140
    iput p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivotY:F

    .line 141
    return-object p0
.end method

.method public playOn(Landroid/view/View;)Lcom/fimi/app/x8s/anim/YoYo$YoYoString;
    .locals 4
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 204
    iput-object p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->target:Landroid/view/View;

    .line 205
    new-instance v0, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;

    new-instance v1, Lcom/fimi/app/x8s/anim/YoYo;

    invoke-direct {v1, p0, v3}, Lcom/fimi/app/x8s/anim/YoYo;-><init>(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;Lcom/fimi/app/x8s/anim/YoYo$1;)V

    invoke-static {v1}, Lcom/fimi/app/x8s/anim/YoYo;->access$1300(Lcom/fimi/app/x8s/anim/YoYo;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->target:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/anim/YoYo$YoYoString;-><init>(Lcom/fimi/app/x8s/anim/BaseViewAnimator;Landroid/view/View;Lcom/fimi/app/x8s/anim/YoYo$1;)V

    return-object v0
.end method

.method public repeat(I)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 2
    .param p1, "times"    # I

    .prologue
    .line 145
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not be less than -1, -1 is infinite loop"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeat:Z

    .line 149
    iput p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeatTimes:I

    .line 150
    return-object p0

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public repeatMode(I)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeatMode:I

    .line 155
    return-object p0
.end method

.method public withListener(Landroid/animation/Animator$AnimatorListener;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-object p0
.end method
