.class public Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "X8DroneInfoStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;,
        Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8DroneInfoState;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8DroneInfoState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8DroneInfoState;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->list:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;)Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->mListener:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->onBindViewHolder(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v4, 0x8

    .line 44
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;

    .line 45
    .local v0, "state":Lcom/fimi/app/x8s/entity/X8DroneInfoState;
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvNormal:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    sget-object v1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$2;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8DroneInfoStateController$State:[I

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->getState()Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvNormal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->btnEvent:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvNormal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->btnEvent:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_error_code_type3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvNormal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_error_code_type3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->btnEvent:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvNormal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->getErrorEvent()I

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->btnEvent:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->btnEvent:Landroid/widget/Button;

    new-instance v2, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$1;-><init>(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    .line 37
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_main_all_setting_drone_info_state_item_normal:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;-><init>(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;Landroid/view/View;)V

    .line 39
    .local v0, "holder":Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;
    return-object v0
.end method

.method public setOnEventClickListener(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->mListener:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;

    .line 105
    return-void
.end method
