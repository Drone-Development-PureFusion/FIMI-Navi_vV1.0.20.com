.class public Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "X8AiLinePointValueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;,
        Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isAll:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;

.field private selectIndex:I

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
            "Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->selectIndex:I

    .line 38
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->list:Ljava/util/List;

    .line 39
    iput p3, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->type:I

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    .prologue
    .line 19
    iget v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->selectIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->selectIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->listener:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isAll()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->isAll:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->onBindViewHolder(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->type:I

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->onSigleSelect(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;I)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setSigleListener(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->onMulSelect(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 46
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_point_value_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    .local v0, "holder":Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;
    return-object v0
.end method

.method public onMulSelect(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 130
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->root:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getnPos()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getState()I

    move-result v0

    .line 133
    .local v0, "state":I
    if-nez v0, :cond_2

    .line 134
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 143
    :cond_0
    :goto_0
    if-eq v0, v6, :cond_1

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setMulListener(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;I)V

    .line 146
    :cond_1
    return-void

    .line 136
    :cond_2
    if-ne v0, v4, :cond_3

    .line 137
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 139
    :cond_3
    if-ne v0, v6, :cond_0

    .line 140
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0
.end method

.method public onSigleSelect(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 117
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->root:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getnPos()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getState()I

    move-result v0

    .line 120
    .local v0, "state":I
    if-nez v0, :cond_1

    .line 121
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    if-ne v0, v4, :cond_0

    .line 123
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0
.end method

.method public setAll(Z)V
    .locals 0
    .param p1, "all"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->isAll:Z

    .line 34
    return-void
.end method

.method public setMulListener(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;
    .param p2, "state"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->listener:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->root:Landroid/view/View;

    new-instance v1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$2;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->listener:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;

    .line 71
    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0
    .param p1, "selectIndex"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->selectIndex:I

    .line 75
    return-void
.end method

.method public setSigleListener(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->listener:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->root:Landroid/view/View;

    new-instance v1, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$1;-><init>(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_0
    return-void
.end method
