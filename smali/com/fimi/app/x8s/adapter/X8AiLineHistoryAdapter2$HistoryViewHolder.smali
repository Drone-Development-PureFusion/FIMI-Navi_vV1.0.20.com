.class public Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "X8AiLineHistoryAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryViewHolder"
.end annotation


# instance fields
.field private mImgSaveFlag:Landroid/widget/ImageView;

.field public mTvItemTitle1:Landroid/widget/TextView;

.field public mTvItemTitle2:Landroid/widget/TextView;

.field public mTvItemTitle3:Landroid/widget/TextView;

.field public mTvItemTitle4:Landroid/widget/TextView;

.field public mTvItemTitle5:Landroid/widget/TextView;

.field public mTvItemTitle6:Landroid/widget/TextView;

.field public rlRootView:Landroid/view/View;

.field private rlSaveFlag:Landroid/view/View;

.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .line 176
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 177
    sget v0, Lcom/fimi/app/x8s/R$id;->rlRootView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->rlRootView:Landroid/view/View;

    .line 178
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle1:Landroid/widget/TextView;

    .line 179
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle2:Landroid/widget/TextView;

    .line 180
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme3:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle3:Landroid/widget/TextView;

    .line 181
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme4:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle4:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme5:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle5:Landroid/widget/TextView;

    .line 183
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme6:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle6:Landroid/widget/TextView;

    .line 185
    sget v0, Lcom/fimi/app/x8s/R$id;->img_save_flag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mImgSaveFlag:Landroid/widget/ImageView;

    .line 186
    sget v0, Lcom/fimi/app/x8s/R$id;->rlSaveFlag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->rlSaveFlag:Landroid/view/View;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mImgSaveFlag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->rlSaveFlag:Landroid/view/View;

    return-object v0
.end method
