.class public Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "X8AiLineHistoryActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private imgReturn:Landroid/widget/ImageView;

.field private mCategolyAdapter:Lcom/fimi/app/x8s/adapter/X8CategoryAdapter;

.field private mFavoritesFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

.field private mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

.field private mRecentFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;

.field private mTlTitleCategoly:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mFavoritesFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)Landroid/support/design/widget/TabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mRecentFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;

    return-object v0
.end method

.method private changeViewVariablw(Landroid/view/View;III)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resColor"    # I
    .param p3, "indicatorState"    # I
    .param p4, "resStr"    # I

    .prologue
    .line 179
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_title_desprition:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    .local v0, "tvTitleDescription":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    if-eqz p4, :cond_0

    .line 182
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/fimi/kernel/utils/LanguageUtil;->attachBaseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public initView()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 74
    sget v4, Lcom/fimi/app/x8s/R$id;->tl_title_categoly:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout;

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    .line 75
    sget v4, Lcom/fimi/app/x8s/R$id;->viewpaper:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/widget/HackyViewPager;

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    .line 76
    sget v4, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->imgReturn:Landroid/widget/ImageView;

    .line 78
    new-instance v4, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;

    invoke-direct {v4}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;-><init>()V

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mRecentFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;

    .line 79
    new-instance v4, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    invoke-direct {v4}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;-><init>()V

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mFavoritesFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    .line 81
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mRecentFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;

    new-instance v5, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;-><init>(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)V

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->setOnX8AiLineSelectListener(Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;)V

    .line 116
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mFavoritesFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    new-instance v5, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$2;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$2;-><init>(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)V

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->setOnX8AiLineSelectListener(Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;)V

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mFragmentList:Ljava/util/List;

    .line 153
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mFragmentList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mRecentFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mFragmentList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mFavoritesFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v4, Lcom/fimi/app/x8s/adapter/X8CategoryAdapter;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mFragmentList:Ljava/util/List;

    invoke-direct {v4, v5, v6}, Lcom/fimi/app/x8s/adapter/X8CategoryAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mCategolyAdapter:Lcom/fimi/app/x8s/adapter/X8CategoryAdapter;

    .line 157
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mCategolyAdapter:Lcom/fimi/app/x8s/adapter/X8CategoryAdapter;

    invoke-virtual {v4, v5}, Lcom/fimi/album/widget/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 158
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-virtual {v4, v8}, Lcom/fimi/album/widget/HackyViewPager;->setOverScrollMode(I)V

    .line 159
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 160
    new-array v3, v8, [I

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_history_title:I

    aput v4, v3, v7

    const/4 v4, 0x1

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_favorites_title:I

    aput v5, v3, v4

    .line 161
    .local v3, "tabStringRes":[I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 162
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$layout;->x8_tab_ai_line_history_view:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    .local v2, "tabItem":Landroid/view/View;
    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->x8_value_select:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aget v5, v3, v0

    invoke-direct {p0, v2, v4, v7, v5}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->changeViewVariablw(Landroid/view/View;III)V

    .line 168
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    .line 169
    .local v1, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x4

    aget v6, v3, v0

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->changeViewVariablw(Landroid/view/View;III)V

    goto :goto_1

    .line 174
    .end local v2    # "tabItem":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, p0}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 175
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 208
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->finish()V

    .line 211
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v1, 0x400

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 54
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    sget v0, Lcom/fimi/app/x8s/R$layout;->activity_x8_ai_line_history:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->initView()V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 62
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 63
    return-void
.end method

.method public onSelectEvent(JI)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->finish()V

    .line 220
    return-void
.end method

.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 203
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_value_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->changeViewVariablw(Landroid/view/View;III)V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/HackyViewPager;->setCurrentItem(I)V

    .line 190
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->mFavoritesFragment:Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->showMaxSaveDialog()V

    .line 193
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->changeViewVariablw(Landroid/view/View;III)V

    .line 198
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 71
    :cond_0
    return-void
.end method
