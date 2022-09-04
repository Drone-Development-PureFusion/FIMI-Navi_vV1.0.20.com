.class public Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;
.super Landroid/widget/RelativeLayout;
.source "X8AiFollowTipBgView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bgContent:Landroid/view/View;

.field private imgTipClose:Landroid/widget/ImageView;

.field private tvTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->initView(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->initView(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public initActions()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->imgTipClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_follow_tip_bg_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->tvTip:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/fimi/app/x8s/R$id;->img_tip_close:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->imgTipClose:Landroid/widget/ImageView;

    .line 38
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_bg_content:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->bgContent:Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->initActions()V

    .line 40
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 49
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_tip_close:I

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->bgContent:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public setTipText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public showTip()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowTipBgView;->bgContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void
.end method
