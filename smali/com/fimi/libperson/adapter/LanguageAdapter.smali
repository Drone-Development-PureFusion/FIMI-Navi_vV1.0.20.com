.class public Lcom/fimi/libperson/adapter/LanguageAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/language/LanguageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/language/LanguageItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/language/LanguageItem;>;"
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->list:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p1, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->list:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->context:Landroid/content/Context;

    .line 33
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/libperson/adapter/LanguageAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/adapter/LanguageAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/fimi/kernel/language/LanguageItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/language/LanguageItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/fimi/libperson/adapter/LanguageAdapter;->getItem(I)Lcom/fimi/kernel/language/LanguageItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "holder":Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 58
    new-instance v0, Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;-><init>(Lcom/fimi/libperson/adapter/LanguageAdapter;Lcom/fimi/libperson/adapter/LanguageAdapter$1;)V

    .line 59
    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;
    invoke-virtual {v0, p3}, Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;->initView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/language/LanguageItem;

    .line 66
    .local v1, "itemBean":Lcom/fimi/kernel/language/LanguageItem;
    iget-object v2, v0, Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/fimi/kernel/language/LanguageItem;->getInfo()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v1}, Lcom/fimi/kernel/language/LanguageItem;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, v0, Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v2, v0, Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$color;->login_forget_password_frequently:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    :goto_1
    return-object p2

    .line 62
    .end local v1    # "itemBean":Lcom/fimi/kernel/language/LanguageItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;
    check-cast v0, Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;
    goto :goto_0

    .line 71
    .restart local v1    # "itemBean":Lcom/fimi/kernel/language/LanguageItem;
    :cond_1
    iget-object v2, v0, Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v2, v0, Lcom/fimi/libperson/adapter/LanguageAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/libperson/adapter/LanguageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$color;->login_font_select:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
