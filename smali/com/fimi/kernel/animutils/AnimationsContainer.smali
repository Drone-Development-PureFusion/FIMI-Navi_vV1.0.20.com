.class public Lcom/fimi/kernel/animutils/AnimationsContainer;
.super Ljava/lang/Object;
.source "AnimationsContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;,
        Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/fimi/kernel/animutils/AnimationsContainer;


# instance fields
.field public FPS:I

.field private mContext:Landroid/content/Context;

.field private resId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x3a

    iput v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer;->FPS:I

    .line 26
    invoke-static {}, Lcom/fimi/kernel/base/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private getData(I)[I
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 185
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 188
    .local v3, "len":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v2, v4, [I

    .line 190
    .local v2, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 191
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    return-object v2
.end method

.method public static getInstance(II)Lcom/fimi/kernel/animutils/AnimationsContainer;
    .locals 1
    .param p0, "resId"    # I
    .param p1, "fps"    # I

    .prologue
    .line 35
    sget-object v0, Lcom/fimi/kernel/animutils/AnimationsContainer;->mInstance:Lcom/fimi/kernel/animutils/AnimationsContainer;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/fimi/kernel/animutils/AnimationsContainer;

    invoke-direct {v0}, Lcom/fimi/kernel/animutils/AnimationsContainer;-><init>()V

    sput-object v0, Lcom/fimi/kernel/animutils/AnimationsContainer;->mInstance:Lcom/fimi/kernel/animutils/AnimationsContainer;

    .line 37
    :cond_0
    sget-object v0, Lcom/fimi/kernel/animutils/AnimationsContainer;->mInstance:Lcom/fimi/kernel/animutils/AnimationsContainer;

    invoke-virtual {v0, p0, p1}, Lcom/fimi/kernel/animutils/AnimationsContainer;->setResId(II)V

    .line 38
    sget-object v0, Lcom/fimi/kernel/animutils/AnimationsContainer;->mInstance:Lcom/fimi/kernel/animutils/AnimationsContainer;

    return-object v0
.end method


# virtual methods
.method public createProgressDialogAnim(Landroid/widget/ImageView;)Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 53
    new-instance v0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    iget v1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer;->resId:I

    invoke-direct {p0, v1}, Lcom/fimi/kernel/animutils/AnimationsContainer;->getData(I)[I

    move-result-object v1

    iget v2, p0, Lcom/fimi/kernel/animutils/AnimationsContainer;->FPS:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;-><init>(Lcom/fimi/kernel/animutils/AnimationsContainer;Landroid/widget/ImageView;[II)V

    return-object v0
.end method

.method public setResId(II)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "fps"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer;->resId:I

    .line 43
    iput p2, p0, Lcom/fimi/kernel/animutils/AnimationsContainer;->FPS:I

    .line 44
    return-void
.end method
