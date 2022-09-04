.class public Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;
.super Ljava/lang/Object;
.source "CustomMediaContoller.java"


# static fields
.field private static final MESSAGE_HIDE_CONTOLL:I = 0x5

.field private static final MESSAGE_SEEK_NEW_POSITION:I = 0x4

.field private static final MESSAGE_SHOW_PROGRESS:I = 0x2

.field private static final PAUSE_IMAGE_HIDE:I = 0x3

.field private static final SET_VIEW_HIDE:I = 0x1

.field private static final TIME_OUT:I = 0xbb8


# instance fields
.field private final SEEKBAR_TIME:I

.field private allTime:Landroid/widget/TextView;

.field private backBtn:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private duration:J

.field private handler:Landroid/os/Handler;

.field private isDragging:Z

.field private isShow:Z

.field private isShowContoller:Z

.field private itemView:Landroid/view/View;

.field private mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

.field private miniPlay:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private play:Landroid/widget/ImageView;

.field private seekBar:Landroid/widget/SeekBar;

.field private time:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "meidaPlayer"    # Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    .line 273
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->SEEKBAR_TIME:I

    .line 64
    iput-object p2, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->view:Landroid/view/View;

    .line 65
    iput-object p3, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

    .line 66
    sget v0, Lcom/fimi/app/x8s/R$id;->media_contoller:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isShow:Z

    .line 69
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isDragging:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isShowContoller:Z

    .line 71
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->context:Landroid/content/Context;

    .line 72
    invoke-interface {p3}, Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->duration:J

    .line 73
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->initView()V

    .line 74
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->initAction()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->setProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->duration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;
    .param p1, "x1"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->generateTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isDragging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isShow:Z

    return v0
.end method

.method private generateTime(J)Ljava/lang/String;
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 226
    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v3, v4

    .line 227
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 228
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 229
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 230
    .local v0, "hours":I
    if-lez v0, :cond_0

    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initAction()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$2;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->view:Landroid/view/View;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->play:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$4;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->miniPlay:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$5;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->backBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$6;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->play_sb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->seekBar:Landroid/widget/SeekBar;

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->total_time_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->allTime:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->time_current_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->time:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->mini_player_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->miniPlay:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->view:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->player_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->play:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->generateTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->allTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->duration:J

    invoke-direct {p0, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->generateTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->tv_photo_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->name:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->ibtn_return:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->backBtn:Landroid/widget/ImageView;

    .line 89
    return-void
.end method

.method private setProgress()J
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v8, 0x0

    .line 172
    iget-boolean v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isDragging:Z

    if-eqz v7, :cond_0

    move-wide v2, v8

    .line 198
    :goto_0
    return-wide v2

    .line 176
    :cond_0
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

    invoke-interface {v7}, Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 177
    .local v2, "position":J
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

    invoke-interface {v7}, Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;->getDuration()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->duration:J

    .line 178
    iget-wide v10, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->duration:J

    invoke-direct {p0, v10, v11}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->generateTime(J)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->allTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 179
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->allTime:Landroid/widget/TextView;

    iget-wide v10, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->duration:J

    invoke-direct {p0, v10, v11}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->generateTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_1
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->seekBar:Landroid/widget/SeekBar;

    if-eqz v7, :cond_2

    .line 181
    iget-wide v10, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->duration:J

    cmp-long v7, v10, v8

    if-lez v7, :cond_2

    .line 182
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v2

    iget-wide v10, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->duration:J

    div-long v0, v8, v10

    .line 183
    .local v0, "pos":J
    div-long v8, v2, v12

    long-to-int v6, v8

    .line 184
    .local v6, "totalSeconds":I
    rem-int/lit8 v4, v6, 0x3c

    .line 185
    .local v4, "seconds":I
    if-lez v4, :cond_3

    .line 187
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->seekBar:Landroid/widget/SeekBar;

    long-to-int v8, v0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 195
    .end local v0    # "pos":J
    .end local v4    # "seconds":I
    .end local v6    # "totalSeconds":I
    :cond_2
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->generateTime(J)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "string":Ljava/lang/String;
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->time:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 189
    .end local v5    # "string":Ljava/lang/String;
    .restart local v0    # "pos":J
    .restart local v4    # "seconds":I
    .restart local v6    # "totalSeconds":I
    :cond_3
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->seekBar:Landroid/widget/SeekBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isShow:Z

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isShow:Z

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->play:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->album_btn_media_play_big_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->miniPlay:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_media_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->play:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    return-void
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->pause()V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->start()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->miniPlay:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_media_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->play:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;->pause()V

    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->generateTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->play:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->album_btn_media_play_big_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->miniPlay:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_media_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 268
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void
.end method

.method public setNameAndDuration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaName"    # Ljava/lang/String;
    .param p2, "duration"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->allTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public setShowContoller(Z)V
    .locals 2
    .param p1, "isShowContoller"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isShowContoller:Z

    .line 256
    if-eqz p1, :cond_0

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isShow:Z

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isShowContoller:Z

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->isShow:Z

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->show(I)V

    goto :goto_0
.end method

.method public show(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    const/4 v1, 0x1

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->play:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->miniPlay:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_media_stop_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;->start()V

    .line 213
    return-void
.end method

.method public startSeekbar()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 277
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->show()V

    .line 279
    return-void
.end method
