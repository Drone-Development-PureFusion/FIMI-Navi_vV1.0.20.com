.class public Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;
.super Landroid/widget/RelativeLayout;
.source "X8AiTipWithCloseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isClose:Z

.field private tvTip:Landroid/widget/TextView;

.field private vClose:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->initView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->initView(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public initActions()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->vClose:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_tip_with_close_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->tvTip:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/fimi/app/x8s/R$id;->tl_close:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->vClose:Landroid/view/View;

    .line 51
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->initActions()V

    .line 52
    return-void
.end method

.method public isClose()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->isClose:Z

    return v0
.end method

.method public isVisibility()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 61
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->tl_close:I

    if-ne v0, v1, :cond_0

    .line 62
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->isClose:Z

    .line 65
    :cond_0
    return-void
.end method

.method public setClose(Z)V
    .locals 0
    .param p1, "close"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->isClose:Z

    .line 28
    return-void
.end method

.method public setTipText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public showTip()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 73
    return-void
.end method
