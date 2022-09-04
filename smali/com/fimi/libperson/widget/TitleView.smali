.class public Lcom/fimi/libperson/widget/TitleView;
.super Landroid/widget/FrameLayout;
.source "TitleView.java"


# instance fields
.field private mIvLeft:Landroid/widget/ImageView;

.field private mTvRight:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$layout;->sub_login_title:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    sget v0, Lcom/fimi/libperson/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/widget/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/widget/TitleView;->mTvTitle:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/fimi/libperson/R$id;->iv_return:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/widget/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/widget/TitleView;->mIvLeft:Landroid/widget/ImageView;

    .line 31
    sget v0, Lcom/fimi/libperson/R$id;->tv_right:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/widget/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/widget/TitleView;->mTvRight:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/fimi/libperson/widget/TitleView;->mIvLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/widget/TitleView$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/widget/TitleView$1;-><init>(Lcom/fimi/libperson/widget/TitleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libperson/widget/TitleView;->mTvRight:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fimi/libperson/widget/TitleView;->mTvTitle:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 39
    return-void
.end method


# virtual methods
.method public setIvLeftListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/libperson/widget/TitleView;->mIvLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public setRightTvIsVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 62
    iget-object v1, p0, Lcom/fimi/libperson/widget/TitleView;->mTvRight:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setTvRightListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fimi/libperson/widget/TitleView;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public setTvRightText(Ljava/lang/String;)V
    .locals 1
    .param p1, "rightText"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/libperson/widget/TitleView;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public setTvRightVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/widget/TitleView;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public setTvTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/libperson/widget/TitleView;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
