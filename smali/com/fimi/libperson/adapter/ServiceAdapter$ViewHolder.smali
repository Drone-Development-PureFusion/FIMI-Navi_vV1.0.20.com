.class Lcom/fimi/libperson/adapter/ServiceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/adapter/ServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mIvArrow:Landroid/widget/ImageView;

.field mTvItemTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/fimi/libperson/adapter/ServiceAdapter;


# direct methods
.method private constructor <init>(Lcom/fimi/libperson/adapter/ServiceAdapter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fimi/libperson/adapter/ServiceAdapter$ViewHolder;->this$0:Lcom/fimi/libperson/adapter/ServiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/libperson/adapter/ServiceAdapter;Lcom/fimi/libperson/adapter/ServiceAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/libperson/adapter/ServiceAdapter;
    .param p2, "x1"    # Lcom/fimi/libperson/adapter/ServiceAdapter$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/fimi/libperson/adapter/ServiceAdapter$ViewHolder;-><init>(Lcom/fimi/libperson/adapter/ServiceAdapter;)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 83
    iget-object v2, p0, Lcom/fimi/libperson/adapter/ServiceAdapter$ViewHolder;->this$0:Lcom/fimi/libperson/adapter/ServiceAdapter;

    invoke-static {v2}, Lcom/fimi/libperson/adapter/ServiceAdapter;->access$100(Lcom/fimi/libperson/adapter/ServiceAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/libperson/R$layout;->adapt_language_setting:I

    invoke-virtual {v0, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/fimi/libperson/R$id;->tv_item_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/libperson/adapter/ServiceAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    .line 86
    sget v2, Lcom/fimi/libperson/R$id;->iv_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/libperson/adapter/ServiceAdapter$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    .line 87
    iget-object v2, p0, Lcom/fimi/libperson/adapter/ServiceAdapter$ViewHolder;->this$0:Lcom/fimi/libperson/adapter/ServiceAdapter;

    invoke-static {v2}, Lcom/fimi/libperson/adapter/ServiceAdapter;->access$100(Lcom/fimi/libperson/adapter/ServiceAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/fimi/libperson/adapter/ServiceAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 88
    return-object v1
.end method
