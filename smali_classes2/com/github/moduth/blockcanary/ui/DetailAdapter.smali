.class final Lcom/github/moduth/blockcanary/ui/DetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailAdapter.java"


# static fields
.field private static final NORMAL_ROW:I = 0x1

.field private static final POSITION_BASIC:I = 0x1

.field private static final POSITION_CPU:I = 0x3

.field private static final POSITION_THREAD_STACK:I = 0x4

.field private static final POSITION_TIME:I = 0x2

.field private static final TOP_ROW:I


# instance fields
.field private mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

.field private mFoldings:[Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mFoldings:[Z

    return-void
.end method

.method private connectorViewType(I)Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->START:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->END:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->NODE:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    goto :goto_0
.end method

.method private elementToHtmlString(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "folding"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    const-string v3, "\r\n"

    const-string v4, "<br>"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "htmlString":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 114
    if-eqz p3, :cond_1

    .line 115
    invoke-static {}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->getConcernPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "concernPackage":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 117
    .local v2, "index":I
    if-lez v2, :cond_0

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .end local v0    # "concernPackage":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_1
    const-string v3, "<font color=\'#ffffff\'>%s</font> "

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 91
    :pswitch_0
    if-eqz p3, :cond_2

    .line 92
    const-string v3, "cpu-core"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_2
    const-string v3, "<font color=\'#c48a47\'>%s</font> "

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    if-eqz p3, :cond_3

    .line 98
    const-string v3, "time-start"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_3
    const-string v3, "<font color=\'#f3cf83\'>%s</font> "

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    goto :goto_0

    .line 104
    :pswitch_2
    move-object v1, p1

    .line 105
    if-eqz p3, :cond_4

    .line 106
    const-string v3, "cpu-rate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_4
    const-string v3, "cpurate = "

    const-string v4, "<br>cpurate<br/>"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v3, "<font color=\'#998bb5\'>%s</font> "

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v3, "]"

    const-string v4, "]<br>"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static findById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    .line 158
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 167
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->getBasicString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->getTimeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->getCpuString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->getItemViewType(I)I

    move-result v7

    if-nez v7, :cond_1

    .line 49
    if-nez p2, :cond_0

    .line 51
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/github/moduth/blockcanary/R$layout;->block_canary_ref_top_row:I

    invoke-virtual {v7, v8, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    :cond_0
    sget v7, Lcom/github/moduth/blockcanary/R$id;->__leak_canary_row_text:I

    invoke-static {p2, v7}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 54
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_0
    return-object p2

    .line 56
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_1
    if-nez p2, :cond_2

    .line 58
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/github/moduth/blockcanary/R$layout;->block_canary_ref_row:I

    invoke-virtual {v7, v8, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_2
    sget v7, Lcom/github/moduth/blockcanary/R$id;->__leak_canary_row_text:I

    invoke-static {p2, v7}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 62
    .restart local v6    # "textView":Landroid/widget/TextView;
    const/4 v7, 0x5

    if-ne p1, v7, :cond_3

    const/4 v4, 0x1

    .line 63
    .local v4, "isThreadStackEntry":Z
    :cond_3
    invoke-virtual {p0, p1}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "element":Ljava/lang/String;
    iget-object v7, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mFoldings:[Z

    aget-boolean v7, v7, p1

    invoke-direct {p0, v2, p1, v7}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->elementToHtmlString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "htmlString":Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mFoldings:[Z

    aget-boolean v7, v7, p1

    if-nez v7, :cond_4

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " <font color=\'#919191\'>blocked</font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    :cond_4
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget v7, Lcom/github/moduth/blockcanary/R$id;->__leak_canary_row_connector:I

    invoke-static {p2, v7}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;

    .line 71
    .local v0, "connectorView":Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;
    invoke-direct {p0, p1}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->connectorViewType(I)Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->setType(Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;)V

    .line 73
    sget v7, Lcom/github/moduth/blockcanary/R$id;->__leak_canary_row_more:I

    invoke-static {p2, v7}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;

    .line 74
    .local v5, "moreDetailsView":Lcom/github/moduth/blockcanary/ui/MoreDetailsView;
    iget-object v7, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mFoldings:[Z

    aget-boolean v7, v7, p1

    invoke-virtual {v5, v7}, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->setFolding(Z)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x2

    return v0
.end method

.method public toggleRow(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mFoldings:[Z

    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mFoldings:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 142
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->notifyDataSetChanged()V

    .line 143
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Lcom/github/moduth/blockcanary/internal/BlockInfo;)V
    .locals 2
    .param p1, "blockInfo"    # Lcom/github/moduth/blockcanary/internal/BlockInfo;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeStart:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    iget-object v1, v1, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    .line 135
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mBlockInfo:Lcom/github/moduth/blockcanary/internal/BlockInfo;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mFoldings:[Z

    .line 136
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->mFoldings:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 137
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
