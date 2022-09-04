.class public Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;
.super Landroid/widget/BaseAdapter;
.source "CountryLetterSortAdapter.java"

# interfaces
.implements Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;
.implements Landroid/widget/SectionIndexer;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$OnShowLetterChangedListener;,
        Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;,
        Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/widget/sticklistview/SortModel;",
            ">;"
        }
    .end annotation
.end field

.field private mListAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/widget/sticklistview/SortModel;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShowLetterChangedListener:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$OnShowLetterChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/widget/sticklistview/SortModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/widget/sticklistview/SortModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mListAll:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mListAll:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mListAll:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mListAll:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private getAlpha(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "sortStr":Ljava/lang/String;
    const-string v1, "[A-Z]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    .end local v0    # "sortStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "sortStr":Ljava/lang/String;
    :cond_0
    const-string v0, "#"

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;-><init>(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;)V

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v0}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;
    .param p4, "isScroll"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 111
    if-nez p2, :cond_1

    .line 112
    new-instance v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;

    invoke-direct {v0}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;-><init>()V

    .line 113
    .local v0, "headerViewHolder":Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;
    iget-object v1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$layout;->country_select_item_sticky_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 114
    sget v1, Lcom/fimi/libperson/R$id;->sticky_header_letter_tv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;->tvLetter:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    :goto_0
    iget-object v1, v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;->tvLetter:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$color;->country_select_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 120
    if-eqz p4, :cond_0

    .line 121
    iget-object v2, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mOnShowLetterChangedListener:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$OnShowLetterChangedListener;

    iget-object v1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v1}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$OnShowLetterChangedListener;->onShowLetterChanged(Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v1}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    :goto_1
    return-object p2

    .line 117
    .end local v0    # "headerViewHolder":Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;

    .restart local v0    # "headerViewHolder":Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;
    goto :goto_0

    .line 126
    :cond_2
    iget-object v2, v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$HeaderViewHolder;->tvLetter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v1}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .param p1, "section"    # I

    .prologue
    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v3}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "sortStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 159
    .local v0, "firstChar":C
    if-ne v0, p1, :cond_0

    .line 163
    .end local v0    # "firstChar":C
    .end local v1    # "i":I
    .end local v2    # "sortStr":Ljava/lang/String;
    :goto_1
    return v1

    .line 156
    .restart local v0    # "firstChar":C
    .restart local v1    # "i":I
    .restart local v2    # "sortStr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "firstChar":C
    .end local v2    # "sortStr":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v0}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "viewHolder":Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 64
    new-instance v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;

    .end local v0    # "viewHolder":Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;-><init>()V

    .line 65
    .restart local v0    # "viewHolder":Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;
    iget-object v1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$layout;->country_select_item_country_letter_sort:I

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 66
    sget v1, Lcom/fimi/libperson/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 75
    :goto_1
    return-object p2

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "viewHolder":Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;
    check-cast v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;
    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, v0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v1}, Lcom/fimi/widget/sticklistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v1}, Lcom/fimi/widget/sticklistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setOnShowLetterChangedListener(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$OnShowLetterChangedListener;)V
    .locals 0
    .param p1, "onShowLetterChangedListener"    # Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$OnShowLetterChangedListener;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mOnShowLetterChangedListener:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$OnShowLetterChangedListener;

    .line 187
    return-void
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/widget/sticklistview/SortModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/widget/sticklistview/SortModel;>;"
    iput-object p1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mList:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->mListAll:Ljava/util/List;

    .line 42
    invoke-virtual {p0}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method
