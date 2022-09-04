.class Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;
.super Ljava/lang/Object;
.source "CountrySelectListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    sget v0, Lcom/fimi/libperson/R$id;->et_cs_search:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$000(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$300(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget v0, Lcom/fimi/libperson/R$id;->et_cs_search:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$000(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$300(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 121
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 125
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    iget-object v2, v2, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v3}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$100(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->updateListView(Ljava/util/List;)V

    .line 127
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    iget-object v2, v2, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-virtual {v2}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v2}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$000(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "searchText":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v2}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$200(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 131
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_1
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v2}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$100(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v2}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$100(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {v2}, Lcom/fimi/widget/sticklistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v2}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$200(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v3}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$100(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_3
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v2}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$200(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    iget-object v2, v2, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v3}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$200(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->updateListView(Ljava/util/List;)V

    .line 141
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$3;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    iget-object v2, v2, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    invoke-virtual {v2}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
