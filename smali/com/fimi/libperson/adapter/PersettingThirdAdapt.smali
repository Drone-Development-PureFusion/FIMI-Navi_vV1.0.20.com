.class public Lcom/fimi/libperson/adapter/PersettingThirdAdapt;
.super Landroid/widget/BaseAdapter;
.source "PersettingThirdAdapt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;,
        Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;
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
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/libperson/adapter/PersettingThirdAdapt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/adapter/PersettingThirdAdapt;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private resetDefaultView(Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 90
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$dimen;->person_setting_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;->mRlBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;->mRlBg:Landroid/widget/RelativeLayout;

    sget v1, Lcom/fimi/libperson/R$drawable;->person_listview_item_shape_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 95
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "holder":Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;
    if-nez p2, :cond_1

    .line 65
    new-instance v0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;-><init>(Lcom/fimi/libperson/adapter/PersettingThirdAdapt;Lcom/fimi/libperson/adapter/PersettingThirdAdapt$1;)V

    .line 66
    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;
    invoke-virtual {v0, p3}, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;->initView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->mList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 86
    :cond_0
    :goto_1
    return-object p2

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;
    check-cast v0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;

    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->resetDefaultView(Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v2, p0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v2}, Lcom/fimi/libperson/entity/PersonSetting;->getThirdAdapt()Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    move-result-object v1

    .line 76
    .local v1, "positionIndex":Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;
    sget-object v2, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;->USER_AGREEMENT:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    if-ne v1, v2, :cond_3

    .line 77
    iget-object v2, v0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v3, Lcom/fimi/libperson/R$string;->person_setting_user_agreement:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 78
    :cond_3
    sget-object v2, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;->USER_PRIVACY:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    if-ne v1, v2, :cond_4

    .line 79
    iget-object v2, v0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v3, Lcom/fimi/libperson/R$string;->person_setting_user_privacy:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 83
    :cond_4
    sget-object v2, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;->USER_RIGHT:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    if-ne v1, v2, :cond_0

    .line 84
    iget-object v2, v0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v3, Lcom/fimi/libperson/R$string;->libperson_user_right:I

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
    .line 57
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/libperson/entity/PersonSetting;>;"
    iput-object p1, p0, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->mList:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->notifyDataSetChanged()V

    .line 59
    return-void
.end method
