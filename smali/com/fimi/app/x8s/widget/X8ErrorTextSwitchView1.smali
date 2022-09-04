.class public Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;
.super Landroid/widget/TextSwitcher;
.source "X8ErrorTextSwitchView1.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field private colorRes:I

.field private context:Landroid/content/Context;

.field private index:I

.field private mHandler:Landroid/os/Handler;

.field private mRotationText:Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;

.field private mTv:Landroid/widget/TextView;

.field private resString:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->index:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->resString:Ljava/util/List;

    .line 30
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->colorRes:I

    .line 31
    new-instance v0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1$1;-><init>(Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->context:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->index:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->resString:Ljava/util/List;

    .line 30
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->colorRes:I

    .line 31
    new-instance v0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1$1;-><init>(Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->context:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->init()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->updateText()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0, p0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->context:Landroid/content/Context;

    sget v1, Lcom/fimi/app/x8s/R$anim;->in_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->context:Landroid/content/Context;

    sget v1, Lcom/fimi/app/x8s/R$anim;->out_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 57
    return-void
.end method

.method private updateText()V
    .locals 4

    .prologue
    .line 69
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->index:I

    .line 70
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->index:I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->resString:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mRotationText:Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mRotationText:Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;->isRotationFinish()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->index:I

    .line 77
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->index:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->index:I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->resString:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 80
    :cond_2
    :goto_0
    return-void

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->resString:Ljava/util/List;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mTv:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mTv:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->colorRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public setResources(Ljava/util/List;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;)V
    .locals 3
    .param p2, "rotationText"    # Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->resString:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->resString:Ljava/util/List;

    .line 62
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResources---->resString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->resString:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 63
    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mRotationText:Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    return-void
.end method
