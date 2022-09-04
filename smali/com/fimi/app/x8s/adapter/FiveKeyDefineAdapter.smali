.class public Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FiveKeyDefineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;,
        Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private arr:[Ljava/lang/String;

.field private colorBlue:I

.field private colorWhite:I

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private listener:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;

.field private selectIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arr"    # [Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->arr:[Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->context:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->colorWhite:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_fc_all_setting_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->colorBlue:I

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->arr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    .prologue
    .line 17
    iget v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->selectIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;)Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->listener:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->arr:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->onBindViewHolder(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->arr:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p2, :cond_1

    .line 47
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 51
    :goto_0
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->arr:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->selectIndex:I

    if-ne p2, v0, :cond_2

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->colorBlue:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 54
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 55
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->listener:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->selectIndex:I

    if-eq v0, p2, :cond_0

    .line 66
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;-><init>(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->colorWhite:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 58
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 59
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->colorWhite:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 62
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 63
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 39
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_main_rc_five_key_define_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    .local v0, "holder":Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;
    return-object v0
.end method

.method public setItemSelect(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 84
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->arr:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 85
    iput p1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->selectIndex:I

    .line 86
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->notifyDataSetChanged()V

    .line 88
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->listener:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;

    .line 92
    return-void
.end method
