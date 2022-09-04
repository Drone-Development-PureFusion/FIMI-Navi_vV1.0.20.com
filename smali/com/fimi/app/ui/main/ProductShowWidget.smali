.class public Lcom/fimi/app/ui/main/ProductShowWidget;
.super Landroid/widget/FrameLayout;
.source "ProductShowWidget.java"

# interfaces
.implements Lcom/fimi/app/interfaces/IProductControllers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/ui/main/ProductShowWidget$PageChangeListener;,
        Lcom/fimi/app/ui/main/ProductShowWidget$KannerPagerAdapter;,
        Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private frameLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Landroid/support/v4/view/ViewPager;

.field positionListener:Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/ui/main/ProductShowWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/app/ui/main/ProductShowWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-object p1, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->context:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/fimi/app/ui/main/ProductShowWidget;->initWidget()V

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/ui/main/ProductShowWidget;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/ui/main/ProductShowWidget;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->frameLayouts:Ljava/util/List;

    return-object v0
.end method

.method private initWidget()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    iget-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040070

    invoke-virtual {v2, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1001ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->pager:Landroid/support/v4/view/ViewPager;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->frameLayouts:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/fimi/app/ui/main/HostNewMainActivity;->PRODUCTCLASS:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 61
    sget-object v2, Lcom/fimi/app/ui/main/HostNewMainActivity;->PRODUCTCLASS:[Ljava/lang/Class;

    aget-object v2, v2, v0

    const-class v3, Lcom/fimi/app/ui/main/HostX9ProductView;

    if-ne v2, v3, :cond_1

    .line 62
    iget-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->frameLayouts:Ljava/util/List;

    new-instance v3, Lcom/fimi/app/ui/main/HostX9ProductView;

    iget-object v4, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/fimi/app/ui/main/HostX9ProductView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    sget-object v2, Lcom/fimi/app/ui/main/HostNewMainActivity;->PRODUCTCLASS:[Ljava/lang/Class;

    aget-object v2, v2, v0

    const-class v3, Lcom/fimi/app/ui/main/HostGh2ProductView;

    if-ne v2, v3, :cond_2

    .line 64
    iget-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->frameLayouts:Ljava/util/List;

    new-instance v3, Lcom/fimi/app/ui/main/HostGh2ProductView;

    iget-object v4, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/fimi/app/ui/main/HostGh2ProductView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_2
    sget-object v2, Lcom/fimi/app/ui/main/HostNewMainActivity;->PRODUCTCLASS:[Ljava/lang/Class;

    aget-object v2, v2, v0

    const-class v3, Lcom/fimi/app/ui/main/HostX8sProductView;

    if-ne v2, v3, :cond_0

    .line 67
    iget-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->frameLayouts:Ljava/util/List;

    new-instance v3, Lcom/fimi/app/ui/main/HostX8sProductView;

    iget-object v4, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/fimi/app/ui/main/HostX8sProductView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/fimi/app/ui/main/ProductShowWidget$KannerPagerAdapter;

    invoke-direct {v3, p0}, Lcom/fimi/app/ui/main/ProductShowWidget$KannerPagerAdapter;-><init>(Lcom/fimi/app/ui/main/ProductShowWidget;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    iget-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 74
    iget-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 75
    iget-object v2, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/fimi/app/ui/main/ProductShowWidget$PageChangeListener;

    invoke-direct {v3, p0, v5}, Lcom/fimi/app/ui/main/ProductShowWidget$PageChangeListener;-><init>(Lcom/fimi/app/ui/main/ProductShowWidget;Lcom/fimi/app/ui/main/ProductShowWidget$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public setPositionListener(Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;)V
    .locals 0
    .param p1, "positionListener"    # Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->positionListener:Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;

    .line 35
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->frameLayouts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fimi/app/ui/main/HostX9ProductView;

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->frameLayouts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/ui/main/HostX9ProductView;

    invoke-virtual {v0}, Lcom/fimi/app/ui/main/HostX9ProductView;->startAnimation()V

    .line 143
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->frameLayouts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fimi/app/ui/main/HostX9ProductView;

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/fimi/app/ui/main/ProductShowWidget;->frameLayouts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/ui/main/HostX9ProductView;

    invoke-virtual {v0}, Lcom/fimi/app/ui/main/HostX9ProductView;->stopnAnimation()V

    .line 136
    :cond_0
    return-void
.end method
