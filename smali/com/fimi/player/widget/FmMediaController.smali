.class public Lcom/fimi/player/widget/FmMediaController;
.super Landroid/widget/FrameLayout;
.source "FmMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final sDefaultTimeout:I = 0xbb8

.field private static final updatePause:I


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private mHandler:Landroid/os/Handler;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/SeekBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUseFastForward:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fimi/player/widget/FmMediaController;-><init>(Landroid/content/Context;Z)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$1;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$1;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 204
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$2;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$2;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 400
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$3;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$3;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    .line 548
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$4;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$4;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 596
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$5;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$5;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 676
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$6;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$6;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 687
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$7;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$7;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 93
    iput-object p0, p0, Lcom/fimi/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    .line 94
    iput-object p1, p0, Lcom/fimi/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    .line 95
    iput-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mUseFastForward:Z

    .line 96
    iput-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFromXml:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$1;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$1;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 204
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$2;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$2;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 400
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$3;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$3;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    .line 548
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$4;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$4;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 596
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$5;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$5;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 676
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$6;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$6;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 687
    new-instance v0, Lcom/fimi/player/widget/FmMediaController$7;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FmMediaController$7;-><init>(Lcom/fimi/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 107
    iput-object p1, p0, Lcom/fimi/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    .line 108
    iput-boolean p2, p0, Lcom/fimi/player/widget/FmMediaController;->mUseFastForward:Z

    .line 109
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->initFloatingWindowLayout()V

    .line 110
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->initFloatingWindow()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/player/widget/FmMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->updateFloatingWindowLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/player/widget/FmMediaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/fimi/player/widget/FmMediaController;->mShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/fimi/player/widget/FmMediaController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fimi/player/widget/FmMediaController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/player/widget/FmMediaController;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/FmMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/player/widget/FmMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/player/widget/FmMediaController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/player/widget/FmMediaController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/player/widget/FmMediaController;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/player/widget/FmMediaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/fimi/player/widget/FmMediaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/fimi/player/widget/FmMediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$602(Lcom/fimi/player/widget/FmMediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/fimi/player/widget/FmMediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$700(Lcom/fimi/player/widget/FmMediaController;)Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/player/widget/FmMediaController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/player/widget/FmMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->doPauseResume()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_2
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->pause()V

    .line 582
    :goto_0
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->updatePausePlay()V

    .line 583
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 262
    sget v1, Lcom/fimi/sdk/R$id;->pause:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 263
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 265
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    :cond_0
    sget v1, Lcom/fimi/sdk/R$id;->ffwd:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 269
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFromXml:Z

    if-nez v1, :cond_1

    .line 272
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mUseFastForward:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 276
    :cond_1
    sget v1, Lcom/fimi/sdk/R$id;->rew:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 277
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFromXml:Z

    if-nez v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/fimi/player/widget/FmMediaController;->mUseFastForward:Z

    if-eqz v4, :cond_8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 285
    :cond_2
    sget v1, Lcom/fimi/sdk/R$id;->next:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 286
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFromXml:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mListenersSet:Z

    if-nez v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 289
    :cond_3
    sget v1, Lcom/fimi/sdk/R$id;->prev:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 290
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFromXml:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mListenersSet:Z

    if-nez v1, :cond_4

    .line 291
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 294
    :cond_4
    sget v1, Lcom/fimi/sdk/R$id;->fmmediacontroller_progress:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    .line 295
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v1, :cond_6

    .line 296
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 297
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    .line 298
    .local v0, "seeker":Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 300
    .end local v0    # "seeker":Landroid/widget/SeekBar;
    :cond_5
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 303
    :cond_6
    sget v1, Lcom/fimi/sdk/R$id;->time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mEndTime:Landroid/widget/TextView;

    .line 304
    sget v1, Lcom/fimi/sdk/R$id;->time_current:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 306
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mFormatter:Ljava/util/Formatter;

    .line 307
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->installPrevNextListeners()V

    .line 308
    return-void

    :cond_7
    move v1, v3

    .line 272
    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 280
    goto/16 :goto_1
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 138
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->initWindow()V

    .line 139
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 141
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 148
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/fimi/player/widget/FmMediaController;->setFocusable(Z)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/fimi/player/widget/FmMediaController;->setFocusableInTouchMode(Z)V

    .line 152
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FmMediaController;->setDescendantFocusability(I)V

    .line 153
    invoke-virtual {p0}, Lcom/fimi/player/widget/FmMediaController;->requestFocus()Z

    .line 154
    return-void
.end method

.method private initFloatingWindowLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 161
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 162
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 163
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 164
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 165
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 166
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 167
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x820020

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 170
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 171
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 172
    return-void
.end method

.method private initWindow()V
    .locals 10

    .prologue
    .line 118
    const-string v0, "com.android.internal.policy.PolicyManager"

    .line 121
    .local v0, "POLICYMANAGER_CLASS_NAME":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 122
    .local v5, "policyClass":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 123
    .local v4, "meths":[Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 125
    .local v3, "makenewwindow":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 126
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "makeNewWindow"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    aget-object v3, v4, v2

    .line 125
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/fimi/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Window;

    iput-object v6, p0, Lcom/fimi/player/widget/FmMediaController;->mWindow:Landroid/view/Window;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v2    # "i":I
    .end local v3    # "makenewwindow":Ljava/lang/reflect/Method;
    .end local v4    # "meths":[Ljava/lang/reflect/Method;
    .end local v5    # "policyClass":Ljava/lang/Class;
    :goto_1
    return-void

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 708
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 701
    goto :goto_0

    :cond_3
    move v1, v2

    .line 706
    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 430
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 431
    return-void
.end method

.method private setProgress()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 448
    const-string v5, "player"

    const-string v6, "setProgress"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v5, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/fimi/player/widget/FmMediaController;->mDragging:Z

    if-eqz v5, :cond_2

    :cond_0
    move v1, v4

    .line 480
    :cond_1
    :goto_0
    return v1

    .line 452
    :cond_2
    iget-object v5, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    .line 453
    .local v1, "position":I
    iget-object v5, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 455
    .local v0, "duration":I
    const-string v5, "player"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " duration"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v5, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    .line 457
    if-lez v0, :cond_3

    .line 460
    div-int/lit16 v5, v0, 0x3e8

    if-lez v5, :cond_6

    .line 461
    const-wide/16 v4, 0x3e8

    div-int/lit16 v6, v1, 0x3e8

    int-to-long v6, v6

    mul-long/2addr v4, v6

    div-int/lit16 v6, v0, 0x3e8

    int-to-long v6, v6

    div-long v2, v4, v6

    .line 462
    .local v2, "pos":J
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 472
    .end local v2    # "pos":J
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 473
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/fimi/player/widget/FmMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_4
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/player/widget/FmMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 475
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/fimi/player/widget/FmMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :cond_5
    if-nez v1, :cond_1

    .line 477
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/fimi/player/widget/FmMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 464
    :cond_6
    iget-object v5, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .param p1, "timeMs"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 433
    div-int/lit16 v3, p1, 0x3e8

    .line 435
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 436
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 437
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 439
    .local v0, "hours":I
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 440
    if-lez v0, :cond_0

    .line 441
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 443
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateFloatingWindowLayout()V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    .line 177
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 178
    .local v0, "anchorPos":[I
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 182
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    .line 183
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 182
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 185
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 186
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 187
    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 188
    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 189
    return-void
.end method

.method private updatePausePlay()V
    .locals 4

    .prologue
    .line 556
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/fimi/sdk/R$drawable;->drone_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 568
    :goto_1
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/fimi/sdk/R$drawable;->drone_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x1

    .line 497
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 498
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 499
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    .line 500
    .local v1, "uniqueDown":Z
    :goto_0
    const/16 v2, 0x4f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x55

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3

    .line 503
    :cond_0
    if-eqz v1, :cond_1

    .line 504
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->doPauseResume()V

    .line 505
    invoke-virtual {p0, v4}, Lcom/fimi/player/widget/FmMediaController;->show(I)V

    .line 506
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 507
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_1
    move v2, v3

    .line 545
    :goto_1
    return v2

    .line 499
    .end local v1    # "uniqueDown":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 511
    .restart local v1    # "uniqueDown":Z
    :cond_3
    const/16 v2, 0x7e

    if-ne v0, v2, :cond_5

    .line 512
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_4

    .line 513
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->start()V

    .line 514
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->updatePausePlay()V

    .line 515
    invoke-virtual {p0, v4}, Lcom/fimi/player/widget/FmMediaController;->show(I)V

    :cond_4
    move v2, v3

    .line 517
    goto :goto_1

    .line 518
    :cond_5
    const/16 v2, 0x56

    if-eq v0, v2, :cond_6

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_8

    .line 520
    :cond_6
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 521
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->pause()V

    .line 522
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->updatePausePlay()V

    .line 523
    invoke-virtual {p0, v4}, Lcom/fimi/player/widget/FmMediaController;->show(I)V

    :cond_7
    move v2, v3

    .line 525
    goto :goto_1

    .line 526
    :cond_8
    const/16 v2, 0x19

    if-eq v0, v2, :cond_9

    const/16 v2, 0x18

    if-eq v0, v2, :cond_9

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_a

    .line 531
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 532
    :cond_a
    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    .line 533
    if-eqz v1, :cond_b

    .line 534
    invoke-virtual {p0}, Lcom/fimi/player/widget/FmMediaController;->hide()V

    .line 535
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_b
    move v2, v3

    .line 537
    goto :goto_1

    .line 538
    :cond_c
    const/16 v2, 0x52

    if-ne v0, v2, :cond_e

    .line 539
    if-eqz v1, :cond_d

    .line 540
    invoke-virtual {p0}, Lcom/fimi/player/widget/FmMediaController;->hide()V

    :cond_d
    move v2, v3

    .line 542
    goto :goto_1

    .line 544
    :cond_e
    invoke-virtual {p0, v4}, Lcom/fimi/player/widget/FmMediaController;->show(I)V

    .line 545
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 386
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/player/widget/FmMediaController;->mShowing:Z

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/fimi/player/widget/FmMediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 254
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lcom/fimi/sdk/R$layout;->fm_media_controller:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    .line 256
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/fimi/player/widget/FmMediaController;->initControllerView(Landroid/view/View;)V

    .line 258
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/fimi/player/widget/FmMediaController;->initControllerView(Landroid/view/View;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 666
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 667
    const-class v0, Lcom/fimi/player/widget/FmMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 668
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 672
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 673
    const-class v0, Lcom/fimi/player/widget/FmMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 674
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 485
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FmMediaController;->show(I)V

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 491
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FmMediaController;->show(I)V

    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 228
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    .line 232
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 236
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/fimi/player/widget/FmMediaController;->removeAllViews()V

    .line 242
    invoke-virtual {p0}, Lcom/fimi/player/widget/FmMediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 243
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/fimi/player/widget/FmMediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 652
    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 655
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 657
    :cond_4
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    .line 658
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 660
    :cond_5
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->disableUnsupportedButtons()V

    .line 661
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 662
    return-void

    :cond_6
    move v0, v2

    .line 652
    goto :goto_0

    :cond_7
    move v1, v2

    .line 655
    goto :goto_1
.end method

.method public setMediaPlayer(Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/fimi/player/widget/FmMediaController;->mPlayer:Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    .line 217
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->updatePausePlay()V

    .line 218
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "next"    # Landroid/view/View$OnClickListener;
    .param p2, "prev"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 711
    iput-object p1, p0, Lcom/fimi/player/widget/FmMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 712
    iput-object p2, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/player/widget/FmMediaController;->mListenersSet:Z

    .line 715
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->installPrevNextListeners()V

    .line 718
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/player/widget/FmMediaController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fimi/player/widget/FmMediaController;->mFromXml:Z

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/fimi/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 725
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 315
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FmMediaController;->show(I)V

    .line 316
    return-void
.end method

.method public show(I)V
    .locals 6
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, 0x1

    .line 348
    const-string v2, "player"

    const-string v3, "show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-boolean v2, p0, Lcom/fimi/player/widget/FmMediaController;->mShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->setProgress()I

    .line 351
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->disableUnsupportedButtons()V

    .line 355
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->updateFloatingWindowLayout()V

    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/fimi/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    iget-object v4, p0, Lcom/fimi/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    iput-boolean v5, p0, Lcom/fimi/player/widget/FmMediaController;->mShowing:Z

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->updatePausePlay()V

    .line 369
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 372
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 373
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v2, p0, Lcom/fimi/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 376
    :cond_2
    return-void

    .line 358
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "player"

    const-string v3, "mWindowManager addview error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/fimi/player/widget/FmMediaController;->updatePausePlay()V

    .line 574
    return-void
.end method
