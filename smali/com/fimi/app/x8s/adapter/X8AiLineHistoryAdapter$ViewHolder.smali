.class public Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "X8AiLineHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mTvItemTitle1:Landroid/widget/TextView;

.field public mTvItemTitle2:Landroid/widget/TextView;

.field public mTvItemTitle3:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 93
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->access$000(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_history_item_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/fimi/app/x8s/R$id;->tvItme1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle1:Landroid/widget/TextView;

    .line 96
    sget v2, Lcom/fimi/app/x8s/R$id;->tvItme2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle2:Landroid/widget/TextView;

    .line 97
    sget v2, Lcom/fimi/app/x8s/R$id;->tvItme3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle3:Landroid/widget/TextView;

    .line 98
    return-object v1
.end method
