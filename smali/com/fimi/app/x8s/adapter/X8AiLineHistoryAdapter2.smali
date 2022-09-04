.class public Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "X8AiLineHistoryAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;",
        ">;"
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
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mX8AiLineSelectListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

.field p:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->p:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->inflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->list:Ljava/util/List;

    .line 47
    iput p3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->type:I

    .line 48
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_history_time_pattern:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->p:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->type:I

    return v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->mX8AiLineSelectListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->list:Ljava/util/List;

    return-object v0
.end method

.method public static secToTime(I)Ljava/lang/String;
    .locals 7
    .param p0, "time"    # I

    .prologue
    .line 255
    const/4 v3, 0x0

    .line 256
    .local v3, "timeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 257
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 258
    .local v1, "minute":I
    const/4 v2, 0x0

    .line 259
    .local v2, "second":I
    if-gtz p0, :cond_0

    .line 260
    const-string v5, "00:00"

    move-object v4, v3

    .line 282
    .end local v3    # "timeStr":Ljava/lang/String;
    .local v4, "timeStr":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 262
    .end local v4    # "timeStr":Ljava/lang/String;
    .restart local v3    # "timeStr":Ljava/lang/String;
    :cond_0
    div-int/lit8 v1, p0, 0x3c

    .line 263
    if-nez v1, :cond_1

    .line 264
    move v2, p0

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .end local v3    # "timeStr":Ljava/lang/String;
    .restart local v4    # "timeStr":Ljava/lang/String;
    move-object v5, v3

    .line 282
    goto :goto_0

    .line 267
    .end local v4    # "timeStr":Ljava/lang/String;
    .restart local v3    # "timeStr":Ljava/lang/String;
    :cond_1
    const/16 v5, 0x3c

    if-ge v1, v5, :cond_2

    .line 268
    rem-int/lit8 v2, p0, 0x3c

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "min "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 271
    :cond_2
    div-int/lit8 v0, v1, 0x3c

    .line 272
    const/16 v5, 0x63

    if-le v0, v5, :cond_3

    .line 273
    const-string v5, "99:59:59"

    move-object v4, v3

    .end local v3    # "timeStr":Ljava/lang/String;
    .restart local v4    # "timeStr":Ljava/lang/String;
    goto :goto_0

    .line 274
    .end local v4    # "timeStr":Ljava/lang/String;
    .restart local v3    # "timeStr":Ljava/lang/String;
    :cond_3
    rem-int/lit8 v1, v1, 0x3c

    .line 275
    mul-int/lit16 v5, v0, 0xe10

    sub-int v5, p0, v5

    mul-int/lit8 v6, v1, 0x3c

    sub-int v2, v5, v6

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "h "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "min "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static unitFormat(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "retStr":Ljava/lang/String;
    if-ltz p0, :cond_0

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 290
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addData(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->list:Ljava/util/List;

    new-instance v1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$3;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyDataSetChanged()V

    .line 156
    return-void
.end method

.method public getDistanceString(F)Ljava/lang/String;
    .locals 3
    .param p1, "distance"    # F

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 250
    .local v0, "d":I
    int-to-float v1, v0

    invoke-static {v1, v2, v2}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->onBindViewHolder(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 61
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .line 62
    .local v0, "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->p:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat3(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "time":Ljava/lang/String;
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle3:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle4:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getDistance()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->getDistanceString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getDistance()F

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSpeed()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 68
    .local v1, "t":I
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle5:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->secToTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->mTvItemTitle6:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSaveFlag()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 73
    iget v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->type:I

    if-nez v3, :cond_1

    .line 74
    invoke-static {p1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_btn_save_flag_selector:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 81
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->access$100(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    invoke-static {p1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->access$100(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;

    invoke-direct {v4, p0, p2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->rlRootView:Landroid/view/View;

    new-instance v4, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;

    invoke-direct {v4, p0, p2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void

    .line 76
    :cond_1
    invoke-static {p1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_btn_cancle_save_flag_selector:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSaveFlag()I

    move-result v3

    if-nez v3, :cond_0

    .line 79
    invoke-static {p1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_btn_unsave_flag_selector:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 54
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_history_item_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;Landroid/view/View;)V

    .line 56
    .local v0, "holder":Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;
    return-object v0
.end method

.method public removeData(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .param p2, "position"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemRemoved(I)V

    .line 161
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p0, p2, v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemRangeChanged(II)V

    .line 162
    return-void
.end method

.method public setOnX8AiLineSelectListener(Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->mX8AiLineSelectListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    .line 193
    return-void
.end method

.method public showCancleDialog(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V
    .locals 7
    .param p1, "info"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .param p2, "index"    # I

    .prologue
    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_line_cancle_save_title:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_line_cancle_save_tip:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "m":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    sget v6, Lcom/fimi/app/x8s/R$string;->cancel:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "l":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_dialog_delete:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "r":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    new-instance v6, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;

    invoke-direct {v6, p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 223
    .local v0, "dialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 224
    return-void
.end method

.method public showEditorDialog(ILcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 4
    .param p1, "positon"    # I
    .param p2, "info1"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 296
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_line_editor:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "t":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    new-instance v3, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;

    invoke-direct {v3, p0, p2, p1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V

    invoke-direct {v0, v2, v1, v3}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;)V

    .line 327
    .local v0, "dialogEditor":Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->show()V

    .line 329
    new-instance v2, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$7;

    invoke-direct {v2, p0, v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$7;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;)V

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 335
    return-void
.end method

.method public showMaxSaveDialog()V
    .locals 7

    .prologue
    .line 228
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_line_max_save_title:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_line_max_save_tip:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "m":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_line_save_cancle:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "l":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_line_save_ok:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, "r":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->context:Landroid/content/Context;

    new-instance v6, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$5;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$5;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 245
    .local v0, "dialogMax":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 246
    return-void
.end method
