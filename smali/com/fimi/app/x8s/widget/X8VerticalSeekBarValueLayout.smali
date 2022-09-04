.class public Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;
.super Landroid/widget/RelativeLayout;
.source "X8VerticalSeekBarValueLayout.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;


# instance fields
.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private curValue:I

.field private lastValue:I

.field private mHandler:Landroid/os/Handler;

.field private mSearchResultsSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatchSubscription:Lrx/Subscription;

.field private prex:Ljava/lang/String;

.field private seekBarMax:I

.field private seekBarMin:I

.field private tvValue:Landroid/widget/TextView;

.field private verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/16 v0, 0x1e

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMax:I

    .line 48
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    .line 49
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->curValue:I

    .line 50
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->lastValue:I

    .line 54
    new-instance v0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$1;-><init>(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_vertical_seek_bar_value_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->view:Landroid/view/View;

    .line 64
    sget v0, Lcom/fimi/app/x8s/R$id;->verticalSeekBar:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    .line 65
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_value:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->tvValue:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->setProgress(I)V

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMax:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->setMaxProgress(I)V

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->setOrientation(I)V

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->view:Landroid/view/View;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->setTextHeight(II)V

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;)V

    .line 75
    const-string/jumbo v0, "x"

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->prex:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->runRxAnroid()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->curValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)Lrx/subjects/PublishSubject;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mSearchResultsSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->lastValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->lastValue:I

    return p1
.end method

.method private runRxAnroid()V
    .locals 4

    .prologue
    .line 168
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mSearchResultsSubject:Lrx/subjects/PublishSubject;

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mSearchResultsSubject:Lrx/subjects/PublishSubject;

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 170
    invoke-virtual {v0, v2, v3, v1}, Lrx/subjects/PublishSubject;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 171
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 172
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$4;-><init>(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)V

    .line 173
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mTextWatchSubscription:Lrx/Subscription;

    .line 192
    return-void
.end method


# virtual methods
.method public changeProcess(Z)V
    .locals 3
    .param p1, "isDown"    # Z

    .prologue
    .line 97
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getProcess()I

    move-result v0

    .line 98
    .local v0, "progess":I
    if-eqz p1, :cond_1

    .line 99
    add-int/lit8 v0, v0, -0x1

    .line 100
    if-gez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 109
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    add-int/2addr v0, v1

    .line 110
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->setProgress(I)V

    .line 111
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->lastValue:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->sendJsonCmdSetFocuse(I)V

    .line 112
    return-void

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 105
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMax:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 106
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMax:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public getCurrentProcess()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->curValue:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mTextWatchSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mTextWatchSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mTextWatchSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 39
    :cond_0
    return-void
.end method

.method public onProgress(Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;I)V
    .locals 5
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;
    .param p2, "progress"    # I

    .prologue
    const/4 v3, 0x0

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getDestX()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getDestY()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->curValue:I

    .line 125
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->tvValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->curValue:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->prex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mSearchResultsSubject:Lrx/subjects/PublishSubject;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->curValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public onStart(Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;
    .param p2, "progress"    # I

    .prologue
    .line 117
    return-void
.end method

.method public onStop(Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;I)V
    .locals 4
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;
    .param p2, "progress"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$2;-><init>(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)V

    const-wide/16 v2, 0x1fe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method

.method public sendJsonCmdSetFocuse(I)V
    .locals 4
    .param p1, "param"    # I

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v2, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$3;

    invoke-direct {v2, p0, v0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$3;-><init>(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraFocuse(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 165
    return-void
.end method

.method public setMinMax([ILcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 3
    .param p1, "minMax"    # [I
    .param p2, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 80
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMax:I

    .line 81
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMax:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->setMaxProgress(I)V

    .line 83
    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 84
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMax:I

    .line 90
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    .line 91
    :cond_1
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->curValue:I

    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->lastValue:I

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->prex:Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->prex:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->verticalSeekBar:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->seekBarMin:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->setProgress(I)V

    .line 94
    return-void
.end method
