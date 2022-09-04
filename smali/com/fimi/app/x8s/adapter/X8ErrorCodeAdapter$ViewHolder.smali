.class public Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "X8ErrorCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mImgBg:Landroid/widget/ImageView;

.field public mIvArrow:Landroid/widget/ImageView;

.field public mTvItemTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->this$0:Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->this$0:Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;->access$000(Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_adapt_error_code:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_item_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    .line 93
    sget v2, Lcom/fimi/app/x8s/R$id;->iv_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    .line 94
    sget v2, Lcom/fimi/app/x8s/R$id;->iv_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/adapter/X8ErrorCodeAdapter$ViewHolder;->mImgBg:Landroid/widget/ImageView;

    .line 95
    return-object v1
.end method
