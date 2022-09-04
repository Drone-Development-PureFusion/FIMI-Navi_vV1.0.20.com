.class public Lcom/fimi/soul/media/player/widget/FmMediaController;
.super Landroid/widget/FrameLayout;
.source "FmMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;
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

.field private mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

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
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;-><init>(Landroid/content/Context;Z)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$1;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$1;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 207
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$2;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$2;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 403
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$3;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$3;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    .line 551
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$4;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$4;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 599
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$5;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 679
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$6;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$6;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 690
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$7;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$7;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object p0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    .line 96
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    .line 97
    iput-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mUseFastForward:Z

    .line 98
    iput-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFromXml:Z

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$1;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$1;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 207
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$2;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$2;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 403
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$3;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$3;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    .line 551
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$4;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$4;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 599
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$5;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 679
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$6;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$6;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 690
    new-instance v0, Lcom/fimi/soul/media/player/widget/FmMediaController$7;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FmMediaController$7;-><init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 110
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    .line 111
    iput-boolean p2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mUseFastForward:Z

    .line 112
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->initFloatingWindowLayout()V

    .line 113
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->initFloatingWindow()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/soul/media/player/widget/FmMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->updateFloatingWindowLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/soul/media/player/widget/FmMediaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/soul/media/player/widget/FmMediaController;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/soul/media/player/widget/FmMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/soul/media/player/widget/FmMediaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/fimi/soul/media/player/widget/FmMediaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$602(Lcom/fimi/soul/media/player/widget/FmMediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$700(Lcom/fimi/soul/media/player/widget/FmMediaController;)Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/soul/media/player/widget/FmMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->doPauseResume()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_2
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->pause()V

    .line 585
    :goto_0
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->updatePausePlay()V

    .line 586
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 265
    sget v1, Lcom/fimi/x8sdk/R$id;->pause:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 266
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 268
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    :cond_0
    sget v1, Lcom/fimi/x8sdk/R$id;->ffwd:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 272
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFromXml:Z

    if-nez v1, :cond_1

    .line 275
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mUseFastForward:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 279
    :cond_1
    sget v1, Lcom/fimi/x8sdk/R$id;->rew:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 280
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFromXml:Z

    if-nez v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mUseFastForward:Z

    if-eqz v4, :cond_8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 288
    :cond_2
    sget v1, Lcom/fimi/x8sdk/R$id;->next:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 289
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFromXml:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mListenersSet:Z

    if-nez v1, :cond_3

    .line 290
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    :cond_3
    sget v1, Lcom/fimi/x8sdk/R$id;->prev:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 293
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFromXml:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mListenersSet:Z

    if-nez v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 297
    :cond_4
    sget v1, Lcom/fimi/x8sdk/R$id;->fmmediacontroller_progress:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    .line 298
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v1, :cond_6

    .line 299
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 300
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    .line 301
    .local v0, "seeker":Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 303
    .end local v0    # "seeker":Landroid/widget/SeekBar;
    :cond_5
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 306
    :cond_6
    sget v1, Lcom/fimi/x8sdk/R$id;->time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mEndTime:Landroid/widget/TextView;

    .line 307
    sget v1, Lcom/fimi/x8sdk/R$id;->time_current:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 309
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFormatter:Ljava/util/Formatter;

    .line 310
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->installPrevNextListeners()V

    .line 311
    return-void

    :cond_7
    move v1, v3

    .line 275
    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 283
    goto/16 :goto_1
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 139
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 141
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->initWindow()V

    .line 142
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 144
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 151
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 153
    invoke-virtual {p0, v2}, Lcom/fimi/soul/media/player/widget/FmMediaController;->setFocusable(Z)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/fimi/soul/media/player/widget/FmMediaController;->setFocusableInTouchMode(Z)V

    .line 155
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->setDescendantFocusability(I)V

    .line 156
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->requestFocus()Z

    .line 157
    return-void
.end method

.method private initFloatingWindowLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 164
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 165
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 167
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 168
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 169
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 170
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x820020

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 173
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 174
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 175
    return-void
.end method

.method private initWindow()V
    .locals 10

    .prologue
    .line 121
    const-string v0, "com.android.internal.policy.PolicyManager"

    .line 124
    .local v0, "POLICYMANAGER_CLASS_NAME":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 125
    .local v5, "policyClass":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 126
    .local v4, "meths":[Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 128
    .local v3, "makenewwindow":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 129
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "makeNewWindow"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    aget-object v3, v4, v2

    .line 128
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Window;

    iput-object v6, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindow:Landroid/view/Window;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2    # "i":I
    .end local v3    # "makenewwindow":Ljava/lang/reflect/Method;
    .end local v4    # "meths":[Ljava/lang/reflect/Method;
    .end local v5    # "policyClass":Ljava/lang/Class;
    :goto_1
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 702
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 711
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 704
    goto :goto_0

    :cond_3
    move v1, v2

    .line 709
    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 433
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 434
    return-void
.end method

.method private setProgress()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 451
    const-string v5, "player"

    const-string v6, "setProgress"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDragging:Z

    if-eqz v5, :cond_2

    :cond_0
    move v1, v4

    .line 483
    :cond_1
    :goto_0
    return v1

    .line 455
    :cond_2
    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    .line 456
    .local v1, "position":I
    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 458
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

    .line 459
    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    .line 460
    if-lez v0, :cond_3

    .line 463
    div-int/lit16 v5, v0, 0x3e8

    if-lez v5, :cond_6

    .line 464
    const-wide/16 v4, 0x3e8

    div-int/lit16 v6, v1, 0x3e8

    int-to-long v6, v6

    mul-long/2addr v4, v6

    div-int/lit16 v6, v0, 0x3e8

    int-to-long v6, v6

    div-long v2, v4, v6

    .line 465
    .local v2, "pos":J
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 475
    .end local v2    # "pos":J
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 476
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_4
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 478
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_5
    if-nez v1, :cond_1

    .line 480
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 467
    :cond_6
    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

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

    .line 436
    div-int/lit16 v3, p1, 0x3e8

    .line 438
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 439
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 440
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 442
    .local v0, "hours":I
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 443
    if-lez v0, :cond_0

    .line 444
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFormatter:Ljava/util/Formatter;

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

    .line 446
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFormatter:Ljava/util/Formatter;

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

    .line 180
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 181
    .local v0, "anchorPos":[I
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 185
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 185
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 188
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 189
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 190
    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 191
    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 192
    return-void
.end method

.method private updatePausePlay()V
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/fimi/x8sdk/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 571
    :goto_1
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/fimi/x8sdk/R$drawable;->ic_launcher:I

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

    .line 500
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 501
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 502
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    .line 503
    .local v1, "uniqueDown":Z
    :goto_0
    const/16 v2, 0x4f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x55

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3

    .line 506
    :cond_0
    if-eqz v1, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->doPauseResume()V

    .line 508
    invoke-virtual {p0, v4}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    .line 509
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_1
    move v2, v3

    .line 548
    :goto_1
    return v2

    .line 502
    .end local v1    # "uniqueDown":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 514
    .restart local v1    # "uniqueDown":Z
    :cond_3
    const/16 v2, 0x7e

    if-ne v0, v2, :cond_5

    .line 515
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_4

    .line 516
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->start()V

    .line 517
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->updatePausePlay()V

    .line 518
    invoke-virtual {p0, v4}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    :cond_4
    move v2, v3

    .line 520
    goto :goto_1

    .line 521
    :cond_5
    const/16 v2, 0x56

    if-eq v0, v2, :cond_6

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_8

    .line 523
    :cond_6
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 524
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->pause()V

    .line 525
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->updatePausePlay()V

    .line 526
    invoke-virtual {p0, v4}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    :cond_7
    move v2, v3

    .line 528
    goto :goto_1

    .line 529
    :cond_8
    const/16 v2, 0x19

    if-eq v0, v2, :cond_9

    const/16 v2, 0x18

    if-eq v0, v2, :cond_9

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_a

    .line 534
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 535
    :cond_a
    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    .line 536
    if-eqz v1, :cond_b

    .line 537
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->hide()V

    .line 538
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_b
    move v2, v3

    .line 540
    goto :goto_1

    .line 541
    :cond_c
    const/16 v2, 0x52

    if-ne v0, v2, :cond_e

    .line 542
    if-eqz v1, :cond_d

    .line 543
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->hide()V

    :cond_d
    move v2, v3

    .line 545
    goto :goto_1

    .line 547
    :cond_e
    invoke-virtual {p0, v4}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    .line 548
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mShowing:Z

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 257
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lcom/fimi/x8sdk/R$layout;->x8_fm_media_controller:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    .line 259
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->initControllerView(Landroid/view/View;)V

    .line 261
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->initControllerView(Landroid/view/View;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 669
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 670
    const-class v0, Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 671
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 676
    const-class v0, Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 677
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 488
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 494
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 231
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    .line 235
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 239
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->removeAllViews()V

    .line 245
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 246
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 655
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 660
    :cond_4
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    .line 661
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 663
    :cond_5
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->disableUnsupportedButtons()V

    .line 664
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 665
    return-void

    :cond_6
    move v0, v2

    .line 655
    goto :goto_0

    :cond_7
    move v1, v2

    .line 658
    goto :goto_1
.end method

.method public setMediaPlayer(Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPlayer:Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    .line 220
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->updatePausePlay()V

    .line 221
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "next"    # Landroid/view/View$OnClickListener;
    .param p2, "prev"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 714
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 715
    iput-object p2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mListenersSet:Z

    .line 718
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 719
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->installPrevNextListeners()V

    .line 721
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mFromXml:Z

    if-nez v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 728
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 318
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    .line 319
    return-void
.end method

.method public show(I)V
    .locals 6
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, 0x1

    .line 351
    const-string v2, "player"

    const-string v3, "show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-boolean v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->setProgress()I

    .line 354
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->disableUnsupportedButtons()V

    .line 358
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->updateFloatingWindowLayout()V

    .line 360
    :try_start_0
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecor:Landroid/view/View;

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    iput-boolean v5, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mShowing:Z

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->updatePausePlay()V

    .line 372
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 375
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 376
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FmMediaController;->mHandler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 379
    :cond_2
    return-void

    .line 361
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "player"

    const-string v3, "mWindowManager addview error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->updatePausePlay()V

    .line 577
    return-void
.end method
