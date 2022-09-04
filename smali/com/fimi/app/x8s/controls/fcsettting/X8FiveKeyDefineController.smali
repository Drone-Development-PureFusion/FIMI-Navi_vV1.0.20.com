.class public Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8FiveKeyDefineController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

.field private curPosition:I

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private imgReturn:Landroid/widget/ImageView;

.field private key:I

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

.field private mContext:Landroid/content/Context;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->adapter:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    .prologue
    .line 21
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->key:I

    return v0
.end method

.method private initViewData()V
    .locals 3

    .prologue
    .line 131
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->key:I

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->adapter:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->adapter:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->curPosition:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->setItemSelect(I)V

    .line 157
    :cond_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_five_key_up:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_five_key_down:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_five_key_left:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_five_key_right:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_five_key_center:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->isShow:Z

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->contentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->defaultVal()V

    .line 114
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_main_rc_item_five_key_define:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->contentView:Landroid/view/View;

    .line 44
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->mContext:Landroid/content/Context;

    .line 45
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->imgReturn:Landroid/widget/ImageView;

    .line 46
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->tvTitle:Landroid/widget/TextView;

    .line 47
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->recycle_five_key:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 48
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 49
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 50
    new-instance v2, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->adapter:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    .line 51
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->adapter:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 52
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 54
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->adapter:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)V

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->setOnItemClickListener(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->initActions()V

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 97
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->closeItem()V

    .line 99
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;->onBack()V

    .line 103
    :cond_0
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->adapter:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

    .line 122
    return-void
.end method

.method public setCurIndex(II)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "curPosition"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->key:I

    .line 126
    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->curPosition:I

    .line 127
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->initViewData()V

    .line 128
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 118
    return-void
.end method

.method public showItem()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->isShow:Z

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void
.end method
