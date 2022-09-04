.class public Lcom/fimi/app/ui/main/HostMainHeader;
.super Landroid/widget/FrameLayout;
.source "HostMainHeader.java"


# instance fields
.field ibtnFeedback:Landroid/widget/ImageButton;

.field ibtnMore:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private presenter:Lcom/fimi/app/presenter/HostMainPresenter;

.field tvDeviceName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostMainHeader;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040069

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    const v0, 0x7f1001c3

    invoke-virtual {p0, v0}, Lcom/fimi/app/ui/main/HostMainHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->ibtnMore:Landroid/widget/ImageButton;

    .line 47
    const v0, 0x7f1001c1

    invoke-virtual {p0, v0}, Lcom/fimi/app/ui/main/HostMainHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->ibtnFeedback:Landroid/widget/ImageButton;

    .line 48
    const v0, 0x7f1001c2

    invoke-virtual {p0, v0}, Lcom/fimi/app/ui/main/HostMainHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->tvDeviceName:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/app/ui/main/HostMainHeader;->tvDeviceName:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->ibtnMore:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/ui/main/HostMainHeader$1;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/ui/main/HostMainHeader$1;-><init>(Lcom/fimi/app/ui/main/HostMainHeader;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->ibtnFeedback:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/ui/main/HostMainHeader$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/ui/main/HostMainHeader$2;-><init>(Lcom/fimi/app/ui/main/HostMainHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/ui/main/HostMainHeader;)Lcom/fimi/app/presenter/HostMainPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/ui/main/HostMainHeader;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->presenter:Lcom/fimi/app/presenter/HostMainPresenter;

    return-object v0
.end method


# virtual methods
.method public setDeviceName(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    return-void
.end method

.method public setPositon(I)V
    .locals 2
    .param p1, "positon"    # I

    .prologue
    .line 74
    sget-object v0, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v1, Lcom/fimi/host/common/ProductEnum;->GH2:Lcom/fimi/host/common/ProductEnum;

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->ibtnFeedback:Landroid/widget/ImageButton;

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->ibtnFeedback:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader;->ibtnFeedback:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPresenter(Lcom/fimi/app/presenter/HostMainPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/fimi/app/presenter/HostMainPresenter;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostMainHeader;->presenter:Lcom/fimi/app/presenter/HostMainPresenter;

    .line 84
    return-void
.end method
