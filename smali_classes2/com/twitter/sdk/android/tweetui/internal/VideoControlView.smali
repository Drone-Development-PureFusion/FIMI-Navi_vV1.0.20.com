.class public Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;
.super Landroid/widget/FrameLayout;
.source "VideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;
    }
.end annotation


# static fields
.field static final FADE_DURATION_MS:I = 0x96

.field static final PROGRESS_BAR_TICKS:J = 0x3e8L

.field private static final SHOW_PROGRESS_MSG:I = 0x3e9


# instance fields
.field currentTime:Landroid/widget/TextView;

.field duration:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

.field seekBar:Landroid/widget/SeekBar;

.field stateControl:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->handler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->handler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->handler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method createProgressChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$3;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$3;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    return-object v0
.end method

.method createStateControlClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$2;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$2;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    return-object v0
.end method

.method hide()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/AnimationUtils;->fadeOut(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    .line 196
    return-void
.end method

.method initSubviews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 88
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__video_control:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    sget v1, Lcom/twitter/sdk/android/tweetui/R$id;->tw__state_control:I

    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->stateControl:Landroid/widget/ImageButton;

    .line 91
    sget v1, Lcom/twitter/sdk/android/tweetui/R$id;->tw__current_time:I

    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->currentTime:Landroid/widget/TextView;

    .line 92
    sget v1, Lcom/twitter/sdk/android/tweetui/R$id;->tw__duration:I

    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->duration:Landroid/widget/TextView;

    .line 93
    sget v1, Lcom/twitter/sdk/android/tweetui/R$id;->tw__progress:I

    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->seekBar:Landroid/widget/SeekBar;

    .line 95
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->seekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 96
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->createProgressChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->stateControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->createStateControlClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setDuration(I)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setCurrentTime(I)V

    .line 101
    invoke-virtual {p0, v3, v3, v3}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setProgress(III)V

    .line 102
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 82
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->initSubviews()V

    .line 83
    return-void
.end method

.method setCurrentTime(I)V
    .locals 4
    .param p1, "currentTimeMillis"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->currentTime:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/tweetui/internal/MediaTimeUtils;->getPlaybackTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method setDuration(I)V
    .locals 4
    .param p1, "durationMillis"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->duration:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/tweetui/internal/MediaTimeUtils;->getPlaybackTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public setMediaPlayer(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    .line 77
    return-void
.end method

.method setPauseDrawable()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->stateControl:Landroid/widget/ImageButton;

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__video_pause_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->stateControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$string;->tw__pause:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method setPlayDrawable()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->stateControl:Landroid/widget/ImageButton;

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__video_play_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 180
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->stateControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$string;->tw__play:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method setProgress(III)V
    .locals 6
    .param p1, "currentTimeMillis"    # I
    .param p2, "durationMillis"    # I
    .param p3, "bufferPercentage"    # I

    .prologue
    .line 162
    if-lez p2, :cond_0

    const-wide/16 v2, 0x3e8

    int-to-long v4, p1

    mul-long/2addr v2, v4

    int-to-long v4, p2

    div-long v0, v2, v4

    .line 164
    .local v0, "pos":J
    :goto_0
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->seekBar:Landroid/widget/SeekBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 165
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->seekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v3, p3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 166
    return-void

    .line 162
    .end local v0    # "pos":J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method setReplayDrawable()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->stateControl:Landroid/widget/ImageButton;

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__video_replay_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->stateControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$string;->tw__replay:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method show()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/AnimationUtils;->fadeIn(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    .line 201
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    return-void
.end method

.method updateProgress()V
    .locals 4

    .prologue
    .line 145
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    invoke-interface {v3}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;->getDuration()I

    move-result v2

    .line 146
    .local v2, "duration":I
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    invoke-interface {v3}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    .line 147
    .local v1, "currentTime":I
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    invoke-interface {v3}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;->getBufferPercentage()I

    move-result v0

    .line 148
    .local v0, "bufferPercentage":I
    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setDuration(I)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setCurrentTime(I)V

    .line 150
    invoke-virtual {p0, v1, v2, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setProgress(III)V

    .line 151
    return-void
.end method

.method updateStateControl()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setPauseDrawable()V

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    invoke-interface {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;->getDuration()I

    move-result v1

    add-int/lit16 v1, v1, -0x1f4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setReplayDrawable()V

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setPlayDrawable()V

    goto :goto_0
.end method
