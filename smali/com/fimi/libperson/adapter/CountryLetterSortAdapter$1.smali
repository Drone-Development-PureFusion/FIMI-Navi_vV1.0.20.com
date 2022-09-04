.class Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;
.super Landroid/widget/Filter;
.source "CountryLetterSortAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;->this$0:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 84
    .local v1, "filterResults":Landroid/widget/Filter$FilterResults;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "filterArrayName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fimi/widget/sticklistview/SortModel;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "search":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;->this$0:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-static {v6}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->access$000(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 88
    iget-object v6, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;->this$0:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-static {v6}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->access$000(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v6}, Lcom/fimi/widget/sticklistview/SortModel;->getPinyin()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    iget-object v6, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;->this$0:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-static {v6}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->access$000(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 94
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 95
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;->this$0:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-static {v0}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->access$100(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;->this$0:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-static {v0}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->access$100(Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v0, p0, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter$1;->this$0:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-virtual {v0}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method
