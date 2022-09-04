.class public Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;
.super Ljava/lang/Object;
.source "AnimationsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/animutils/AnimationsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FramesSequenceAnimation"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mDelayMillis:I

.field private mFrames:[I

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mIsRunning:Z

.field private mOnAnimationStoppedListener:Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;

.field private mShouldRun:Z

.field private mSoftReferenceImageView:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fimi/kernel/animutils/AnimationsContainer;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/animutils/AnimationsContainer;Landroid/widget/ImageView;[II)V
    .locals 7
    .param p1, "this$0"    # Lcom/fimi/kernel/animutils/AnimationsContainer;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "frames"    # [I
    .param p4, "fps"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    iput-object p1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->this$0:Lcom/fimi/kernel/animutils/AnimationsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    .line 79
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p3, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mFrames:[I

    .line 81
    const/4 v4, -0x1

    iput v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    .line 82
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    .line 83
    iput-boolean v5, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z

    .line 84
    iput-boolean v5, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mIsRunning:Z

    .line 85
    const/16 v4, 0x64

    iput v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mDelayMillis:I

    .line 87
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mFrames:[I

    aget v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 91
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 93
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 94
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 95
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    .line 96
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 98
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 99
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 100
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 101
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 103
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Ljava/lang/ref/SoftReference;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z

    return v0
.end method

.method static synthetic access$202(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mOnAnimationStoppedListener:Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .prologue
    .line 60
    iget v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mDelayMillis:I

    return v0
.end method

.method static synthetic access$500(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->getNext()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method private getNext()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    .line 107
    iget v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    iget-object v1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mFrames:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mFrames:[I

    iget v1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public isShouldRun()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z

    return v0
.end method

.method public setOnAnimStopListener(Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mOnAnimationStoppedListener:Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;

    .line 176
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z

    .line 117
    iget-boolean v1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    new-instance v0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;-><init>(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)V

    .line 160
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
