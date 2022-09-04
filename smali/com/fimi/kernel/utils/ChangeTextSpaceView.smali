.class public Lcom/fimi/kernel/utils/ChangeTextSpaceView;
.super Landroid/widget/TextView;
.source "ChangeTextSpaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/utils/ChangeTextSpaceView$Spacing;
    }
.end annotation


# instance fields
.field private originalText:Ljava/lang/CharSequence;

.field private spacing:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->spacing:F

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->originalText:Ljava/lang/CharSequence;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->spacing:F

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->originalText:Ljava/lang/CharSequence;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->spacing:F

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->originalText:Ljava/lang/CharSequence;

    .line 29
    return-void
.end method

.method private applySpacing()V
    .locals 6

    .prologue
    .line 52
    if-eqz p0, :cond_0

    iget-object v3, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->originalText:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->originalText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 55
    iget-object v3, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->originalText:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->originalText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 57
    const-string/jumbo v3, "\u00a0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .local v1, "finalText":Landroid/text/SpannableString;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 62
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 63
    new-instance v3, Landroid/text/style/ScaleXSpan;

    iget v4, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->spacing:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-direct {v3, v4}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 62
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 66
    :cond_4
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method


# virtual methods
.method public getSpacing()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->spacing:F

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->originalText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setSpacing(F)V
    .locals 0
    .param p1, "spacing"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->spacing:F

    .line 37
    invoke-direct {p0}, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->applySpacing()V

    .line 38
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->originalText:Ljava/lang/CharSequence;

    .line 43
    invoke-direct {p0}, Lcom/fimi/kernel/utils/ChangeTextSpaceView;->applySpacing()V

    .line 44
    return-void
.end method
