.class public Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "CountrySelectListActivity.java"

# interfaces
.implements Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;
.implements Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$OnShowLetterChangedListener;


# static fields
.field public static final LOGIN_REQUEST_CODE:B = 0x1t

.field public static final REGISTER_REQUEST_CODE:B = 0x2t

.field public static final SELECT_COUNTRY_AREO_CODE:Ljava/lang/String; = "select_country_areo_code"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

.field private mCharacterParser:Lcom/fimi/widget/sticklistview/CharacterParser;

.field private mEtSearch:Landroid/widget/EditText;

.field private mIbtnDeleteSearch:Landroid/widget/ImageButton;

.field private mLetterSideBar:Lcom/fimi/widget/sticklistview/LetterSideBar;

.field private mSourceDateFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/widget/sticklistview/SortModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/widget/sticklistview/SortModel;",
            ">;"
        }
    .end annotation
.end field

.field mStickyLV:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

.field private mTitleView:Lcom/fimi/libperson/widget/TitleView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateFilterList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mEtSearch:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateFilterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mIbtnDeleteSearch:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private filledData([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "date"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/widget/sticklistview/SortModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, "mSortList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/widget/sticklistview/SortModel;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 170
    new-instance v4, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-direct {v4}, Lcom/fimi/widget/sticklistview/SortModel;-><init>()V

    .line 171
    .local v4, "sortModel":Lcom/fimi/widget/sticklistview/SortModel;
    aget-object v6, p1, v0

    invoke-virtual {v4, v6}, Lcom/fimi/widget/sticklistview/SortModel;->setName(Ljava/lang/String;)V

    .line 172
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mCharacterParser:Lcom/fimi/widget/sticklistview/CharacterParser;

    aget-object v7, p1, v0

    invoke-virtual {v6, v7}, Lcom/fimi/widget/sticklistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "pinyin":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/fimi/widget/sticklistview/SortModel;->setPinyin(Ljava/lang/String;)V

    .line 174
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "sortString":Ljava/lang/String;
    const-string v6, "[A-Z]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fimi/widget/sticklistview/SortModel;->setSortLetter(Ljava/lang/String;)V

    .line 181
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    const-string v6, "#"

    invoke-virtual {v4, v6}, Lcom/fimi/widget/sticklistview/SortModel;->setSortLetter(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    .end local v3    # "pinyin":Ljava/lang/String;
    .end local v4    # "sortModel":Lcom/fimi/widget/sticklistview/SortModel;
    .end local v5    # "sortString":Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public OnLoadingMore()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public doTrans()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mIbtnDeleteSearch:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$1;-><init>(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/fimi/libperson/R$layout;->activity_country_select:I

    return v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->initView()V

    .line 68
    return-void
.end method

.method public initView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 83
    invoke-static {}, Lcom/fimi/widget/sticklistview/CharacterParser;->getInstance()Lcom/fimi/widget/sticklistview/CharacterParser;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mCharacterParser:Lcom/fimi/widget/sticklistview/CharacterParser;

    .line 84
    new-instance v2, Lcom/fimi/widget/sticklistview/PinyinComparator;

    invoke-direct {v2}, Lcom/fimi/widget/sticklistview/PinyinComparator;-><init>()V

    .line 85
    .local v2, "pinyinComparator":Lcom/fimi/widget/sticklistview/PinyinComparator;
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$array;->country_code_list:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->filledData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateList:Ljava/util/List;

    .line 86
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$array;->common_places_list:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "ss":[Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateList:Ljava/util/List;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 89
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v4}, Lcom/fimi/widget/sticklistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/widget/sticklistview/SortModel;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Lcom/fimi/widget/sticklistview/SortModel;->setSortLetter(Ljava/lang/String;)V

    .line 88
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "j":I
    :cond_2
    new-instance v4, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mSourceDateList:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    .line 99
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-virtual {v4, p0}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->setOnShowLetterChangedListener(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$OnShowLetterChangedListener;)V

    .line 100
    sget v4, Lcom/fimi/libperson/R$id;->stickyList:I

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    iput-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mStickyLV:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    .line 101
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mStickyLV:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-virtual {v4, v5}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mStickyLV:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-virtual {v4, p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mStickyLV:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-virtual {v4, p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->setOnHeaderClickListener(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;)V

    .line 104
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mStickyLV:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-virtual {v4, p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->setLoadingMoreListener(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;)V

    .line 105
    sget v4, Lcom/fimi/libperson/R$id;->cs_letter_sb:I

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/widget/sticklistview/LetterSideBar;

    iput-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mLetterSideBar:Lcom/fimi/widget/sticklistview/LetterSideBar;

    .line 106
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mLetterSideBar:Lcom/fimi/widget/sticklistview/LetterSideBar;

    new-instance v5, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$2;

    invoke-direct {v5, p0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$2;-><init>(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)V

    invoke-virtual {v4, v5}, Lcom/fimi/widget/sticklistview/LetterSideBar;->setOnTouchingLetterChangedListener(Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;)V

    .line 115
    sget v4, Lcom/fimi/libperson/R$id;->et_cs_search:I

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mEtSearch:Landroid/widget/EditText;

    .line 116
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mEtSearch:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 117
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mEtSearch:Landroid/widget/EditText;

    new-instance v5, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;

    invoke-direct {v5, p0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;-><init>(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    sget v4, Lcom/fimi/libperson/R$id;->title_view:I

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/libperson/widget/TitleView;

    iput-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    .line 162
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/fimi/libperson/R$string;->country_select_title:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/libperson/widget/TitleView;->setTvTitle(Ljava/lang/String;)V

    .line 163
    sget v4, Lcom/fimi/libperson/R$id;->ibtn_delete_search:I

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mIbtnDeleteSearch:Landroid/widget/ImageButton;

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onHeaderClick(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;Landroid/view/View;IJZ)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;
    .param p2, "header"    # Landroid/view/View;
    .param p3, "itemPosition"    # I
    .param p4, "headerId"    # J
    .param p6, "currentlySticky"    # Z

    .prologue
    .line 193
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-virtual {v1, p3}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v1}, Lcom/fimi/widget/sticklistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "country":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "select_country_areo_code"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->setResult(ILandroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->finish()V

    .line 201
    return-void
.end method

.method public onShowLetterChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mLetterSideBar:Lcom/fimi/widget/sticklistview/LetterSideBar;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/sticklistview/LetterSideBar;->updateLetter(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 51
    return-void
.end method
