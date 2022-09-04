.class public Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;
.super Landroid/widget/BaseAdapter;
.source "X8ErrorCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8ErrorCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8ErrorCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8ErrorCode;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->mList:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "holder":Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;-><init>(Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;)V

    .line 55
    .restart local v0    # "holder":Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;
    invoke-virtual {v0, p3}, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->initView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 62
    .local v1, "itemBean":Lcom/fimi/app/x8s/entity/X8ErrorCode;
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget-object v2, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$1;->$SwitchMap$com$fimi$app$x8s$enums$X8ErrorCodeEnum:[I

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->getLevel()Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 81
    :goto_1
    return-object p2

    .line 58
    .end local v1    # "itemBean":Lcom/fimi/app/x8s/entity/X8ErrorCode;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;
    check-cast v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;
    goto :goto_0

    .line 66
    .restart local v1    # "itemBean":Lcom/fimi/app/x8s/entity/X8ErrorCode;
    :pswitch_0
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_error_code_type1_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mImgBg:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_error_code_type1:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 71
    :pswitch_1
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_error_code_type2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_error_code_type2_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 73
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mImgBg:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_error_code_type2:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 76
    :pswitch_2
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_error_code_type3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_error_code_type3_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mImgBg:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_error_code_type3:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
