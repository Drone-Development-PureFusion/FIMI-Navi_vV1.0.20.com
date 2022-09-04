.class public Lcom/fimi/libperson/adapter/PersettingFourAdapt;
.super Landroid/widget/BaseAdapter;
.source "PersettingFourAdapt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;,
        Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/libperson/entity/PersonSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/libperson/adapter/PersettingFourAdapt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/adapter/PersettingFourAdapt;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private resetDefaultView(Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 86
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$dimen;->person_setting_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;->mRlBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;->mRlBg:Landroid/widget/RelativeLayout;

    sget v1, Lcom/fimi/libperson/R$drawable;->person_listview_item_shape_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 91
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "holder":Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;
    if-nez p2, :cond_1

    .line 61
    new-instance v0, Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;-><init>(Lcom/fimi/libperson/adapter/PersettingFourAdapt;Lcom/fimi/libperson/adapter/PersettingFourAdapt$1;)V

    .line 62
    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;
    invoke-virtual {v0, p3}, Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;->initView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->mList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 82
    :cond_0
    :goto_1
    return-object p2

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;
    check-cast v0, Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;

    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->resetDefaultView(Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, p0, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v2}, Lcom/fimi/libperson/entity/PersonSetting;->getFourAdapt()Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    move-result-object v1

    .line 79
    .local v1, "positionIndex":Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;
    sget-object v2, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;->ABOUT:Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v2, v0, Lcom/fimi/libperson/adapter/PersettingFourAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v3, Lcom/fimi/libperson/R$string;->libperson_about:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/libperson/entity/PersonSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/libperson/entity/PersonSetting;>;"
    iput-object p1, p0, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->mList:Ljava/util/List;

    .line 54
    invoke-virtual {p0}, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->notifyDataSetChanged()V

    .line 55
    return-void
.end method
