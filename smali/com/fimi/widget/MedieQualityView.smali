.class public Lcom/fimi/widget/MedieQualityView;
.super Landroid/widget/FrameLayout;
.source "MedieQualityView.java"


# instance fields
.field arg1:I

.field arg2:I

.field isAnimation:Z

.field private mHandler:Landroid/os/Handler;

.field tvArg1:Landroid/widget/TextView;

.field tvArg2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/fimi/widget/MedieQualityView;->arg1:I

    .line 25
    iput v0, p0, Lcom/fimi/widget/MedieQualityView;->arg2:I

    .line 36
    iput-boolean v0, p0, Lcom/fimi/widget/MedieQualityView;->isAnimation:Z

    .line 54
    new-instance v0, Lcom/fimi/widget/MedieQualityView$1;

    invoke-direct {v0, p0}, Lcom/fimi/widget/MedieQualityView$1;-><init>(Lcom/fimi/widget/MedieQualityView;)V

    iput-object v0, p0, Lcom/fimi/widget/MedieQualityView;->mHandler:Landroid/os/Handler;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/sdk/R$layout;->item_media_quality:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    sget v0, Lcom/fimi/sdk/R$id;->tv_arg1:I

    invoke-virtual {p0, v0}, Lcom/fimi/widget/MedieQualityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/widget/MedieQualityView;->tvArg1:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/fimi/sdk/R$id;->tv_arg2:I

    invoke-virtual {p0, v0}, Lcom/fimi/widget/MedieQualityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/widget/MedieQualityView;->tvArg2:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/widget/MedieQualityView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/MedieQualityView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/widget/MedieQualityView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 84
    return-void
.end method

.method public removeMessage()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fimi/widget/MedieQualityView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    return-void
.end method

.method public setMediaQuality(II)V
    .locals 6
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 38
    const-string v3, "moweiru"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arg1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";arg2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    int-to-float v3, p2

    const/high16 v4, 0x41200000    # 10.0f

    div-float v2, v3, v4

    .line 40
    .local v2, "showArg2":F
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "arg2Str":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/fimi/widget/MedieQualityView;->isAnimation:Z

    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView;->tvArg1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView;->tvArg2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fimi/widget/MedieQualityView;->isAnimation:Z

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView;->tvArg1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView;->tvArg2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fimi/widget/MedieQualityView;->isAnimation:Z

    goto :goto_0
.end method
