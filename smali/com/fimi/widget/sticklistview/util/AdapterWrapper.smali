.class public Lcom/fimi/widget/sticklistview/util/AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "AdapterWrapper.java"

# interfaces
.implements Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field final mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private final mHeaderCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnHeaderClickListener:Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$1;-><init>(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)V

    iput-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 54
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    .line 56
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$101(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method static synthetic access$201(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mOnHeaderClickListener:Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;

    return-object v0
.end method

.method private configureHeader(Lcom/fimi/widget/sticklistview/util/WrapperView;I)Landroid/view/View;
    .locals 3
    .param p1, "wv"    # Lcom/fimi/widget/sticklistview/util/WrapperView;
    .param p2, "position"    # I

    .prologue
    .line 127
    iget-object v1, p1, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->popHeader()Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "header":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v0, p1, v2}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 130
    if-nez v0, :cond_1

    .line 131
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Header view must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    iget-object v0, p1, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    goto :goto_0

    .line 134
    .restart local v0    # "header":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 135
    new-instance v1, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;

    invoke-direct {v1, p0, p2}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;-><init>(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object v0
.end method

.method private popHeader()Landroid/view/View;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private previousPositionHasSameHeader(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 157
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    .line 158
    invoke-interface {v0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    add-int/lit8 v3, p1, -0x1

    .line 159
    invoke-interface {v2, v3}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleHeaderIfExists(Lcom/fimi/widget/sticklistview/util/WrapperView;)V
    .locals 2
    .param p1, "wv"    # Lcom/fimi/widget/sticklistview/util/WrapperView;

    .prologue
    .line 116
    iget-object v0, p1, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    .line 117
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "isScroll"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/fimi/widget/sticklistview/util/WrapperView;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/fimi/widget/sticklistview/util/WrapperView;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    if-nez p2, :cond_1

    new-instance v2, Lcom/fimi/widget/sticklistview/util/WrapperView;

    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/fimi/widget/sticklistview/util/WrapperView;-><init>(Landroid/content/Context;)V

    .line 165
    .end local p2    # "convertView":Landroid/view/View;
    .local v2, "wv":Lcom/fimi/widget/sticklistview/util/WrapperView;
    :goto_0
    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    iget-object v4, v2, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    invoke-interface {v3, p1, v4, v2}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "item":Landroid/view/View;
    const/4 v0, 0x0

    .line 167
    .local v0, "header":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->previousPositionHasSameHeader(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    invoke-direct {p0, v2}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->recycleHeaderIfExists(Lcom/fimi/widget/sticklistview/util/WrapperView;)V

    .line 172
    :goto_1
    instance-of v3, v1, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    instance-of v3, v2, Lcom/fimi/widget/sticklistview/util/CheckableWrapperView;

    if-nez v3, :cond_3

    .line 174
    new-instance v2, Lcom/fimi/widget/sticklistview/util/CheckableWrapperView;

    .end local v2    # "wv":Lcom/fimi/widget/sticklistview/util/WrapperView;
    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/fimi/widget/sticklistview/util/CheckableWrapperView;-><init>(Landroid/content/Context;)V

    .line 178
    .restart local v2    # "wv":Lcom/fimi/widget/sticklistview/util/WrapperView;
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDividerHeight:I

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/fimi/widget/sticklistview/util/WrapperView;->update(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 179
    return-object v2

    .line 164
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "wv":Lcom/fimi/widget/sticklistview/util/WrapperView;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    check-cast p2, Lcom/fimi/widget/sticklistview/util/WrapperView;

    move-object v2, p2

    goto :goto_0

    .line 170
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "header":Landroid/view/View;
    .restart local v1    # "item":Landroid/view/View;
    .restart local v2    # "wv":Lcom/fimi/widget/sticklistview/util/WrapperView;
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->configureHeader(Lcom/fimi/widget/sticklistview/util/WrapperView;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_3
    instance-of v3, v1, Landroid/widget/Checkable;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/fimi/widget/sticklistview/util/CheckableWrapperView;

    if-eqz v3, :cond_0

    .line 176
    new-instance v2, Lcom/fimi/widget/sticklistview/util/WrapperView;

    .end local v2    # "wv":Lcom/fimi/widget/sticklistview/util/WrapperView;
    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/fimi/widget/sticklistview/util/WrapperView;-><init>(Landroid/content/Context;)V

    .restart local v2    # "wv":Lcom/fimi/widget/sticklistview/util/WrapperView;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 209
    return-void
.end method

.method setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 61
    return-void
.end method

.method setDividerHeight(I)V
    .locals 0
    .param p1, "dividerHeight"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDividerHeight:I

    .line 65
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;)V
    .locals 0
    .param p1, "onHeaderClickListener"    # Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mOnHeaderClickListener:Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
