.class public Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "X8AiLineHistoryAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private defaultColor:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private select:I

.field private selectColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->select:I

    .line 29
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->mList:Ljava/util/List;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->white_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->defaultColor:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_fc_all_setting_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->selectColor:I

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSelect()Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->select:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->mList:Ljava/util/List;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->select:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "holder":Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 55
    new-instance v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;

    .end local v2    # "holder":Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;
    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;)V

    .line 56
    .restart local v2    # "holder":Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;
    invoke-virtual {v2, p3}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->initView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v6, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .line 62
    .local v3, "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    iget-object v6, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->context:Landroid/content/Context;

    sget v7, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_history_time_pattern:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "p":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat2(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "str":[Ljava/lang/String;
    iget-object v6, v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle1:Landroid/widget/TextView;

    aget-object v7, v5, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v6, v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle2:Landroid/widget/TextView;

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v6, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->context:Landroid/content/Context;

    sget v7, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_history_distance:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "ds":Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getDistance()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "distance":Ljava/lang/String;
    iget-object v6, v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle3:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget v6, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->select:I

    if-ne v6, p1, :cond_1

    .line 70
    iget-object v6, v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle1:Landroid/widget/TextView;

    iget v7, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->selectColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v6, v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle2:Landroid/widget/TextView;

    iget v7, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->selectColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v6, v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle3:Landroid/widget/TextView;

    iget v7, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->selectColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    :goto_1
    return-object p2

    .line 59
    .end local v0    # "distance":Ljava/lang/String;
    .end local v1    # "ds":Ljava/lang/String;
    .end local v3    # "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .end local v4    # "p":Ljava/lang/String;
    .end local v5    # "str":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;
    check-cast v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;

    .restart local v2    # "holder":Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;
    goto/16 :goto_0

    .line 74
    .restart local v0    # "distance":Ljava/lang/String;
    .restart local v1    # "ds":Ljava/lang/String;
    .restart local v3    # "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .restart local v4    # "p":Ljava/lang/String;
    .restart local v5    # "str":[Ljava/lang/String;
    :cond_1
    iget-object v6, v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle1:Landroid/widget/TextView;

    iget v7, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->defaultColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v6, v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle2:Landroid/widget/TextView;

    iget v7, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->defaultColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v6, v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter$ViewHolder;->mTvItemTitle3:Landroid/widget/TextView;

    iget v7, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->defaultColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->select:I

    .line 84
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method
