.class public Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "X8B2oxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxHeaderViewHolder;,
        Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private loginDialogRestart:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private volatile sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->context:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->sections:Ljava/util/Map;

    .line 47
    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->loginDialogRestart:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;
    .param p1, "x1"    # Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->loginDialogRestart:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object p1
.end method

.method private onBindContentViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;IILcom/fimi/app/x8s/adapter/section/X8B2oxSection;)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "positionSection"    # I
    .param p3, "position1"    # I
    .param p4, "section"    # Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;

    .prologue
    .line 96
    invoke-virtual {p4}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/X8B2oxFile;

    .local v0, "file":Lcom/fimi/app/x8s/entity/X8B2oxFile;
    move-object v3, p1

    .line 98
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    iget-object v3, v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->mTvItemTitle1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getNameShow()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, p1

    .line 99
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    iget-object v3, v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->mTvItemTitle3:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getShowLen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_upload_success:I

    .line 101
    .local v1, "resId":I
    sget-object v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$2;->$SwitchMap$com$fimi$kernel$fds$FdsUploadState:[I

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/fds/FdsUploadState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v3

    sget-object v4, Lcom/fimi/kernel/fds/FdsUploadState;->IDLE:Lcom/fimi/kernel/fds/FdsUploadState;

    if-eq v3, v4, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v3

    sget-object v4, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    if-eq v3, v4, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v3

    sget-object v4, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    if-ne v3, v4, :cond_2

    .line 139
    :cond_1
    check-cast p1, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$100(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;

    invoke-direct {v4, p0, v0, p2, p3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;-><init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Lcom/fimi/app/x8s/entity/X8B2oxFile;II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_2
    return-void

    .line 103
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_0
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_upload_idel:I

    move-object v3, p1

    .line 104
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 107
    :pswitch_1
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_upload_wait:I

    move-object v3, p1

    .line 108
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 111
    :pswitch_2
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_upload_runing:I

    move-object v3, p1

    .line 112
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object v3, p1

    .line 113
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$anim;->rotate_anim:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 115
    .local v2, "rorateAnimation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v3, p1

    .line 116
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 120
    .end local v2    # "rorateAnimation":Landroid/view/animation/Animation;
    :pswitch_3
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_upload_success:I

    move-object v3, p1

    .line 121
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object v3, p1

    .line 122
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    move-object v3, p1

    .line 123
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$100(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 126
    :pswitch_4
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_upload_restart:I

    move-object v3, p1

    .line 127
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object v3, p1

    .line 128
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    goto/16 :goto_0

    .line 131
    :pswitch_5
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_upload_idel:I

    move-object v3, p1

    .line 132
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object v3, p1

    .line 133
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "section"    # Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 279
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->notifyDataSetChanged()V

    .line 280
    return-void
.end method

.method public getItemCount()I
    .locals 5

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "count":I
    iget-object v4, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 218
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;

    .line 221
    .local v3, "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->getSectionItemsTotal()I

    move-result v4

    add-int/2addr v0, v4

    .line 222
    goto :goto_0

    .line 224
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    .end local v3    # "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "currentPos":I
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 237
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 239
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;

    .line 240
    .local v3, "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->getSectionItemsTotal()I

    move-result v4

    .line 242
    .local v4, "sectionTotal":I
    if-lt p1, v0, :cond_1

    add-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gt p1, v5, :cond_1

    .line 243
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->isHasHeader()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    if-ne p1, v0, :cond_0

    .line 245
    const/4 v5, 0x0

    .line 247
    :goto_1
    return v5

    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    .line 251
    :cond_1
    add-int/2addr v0, v4

    .line 252
    goto :goto_0

    .line 255
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    .end local v3    # "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    .end local v4    # "sectionTotal":I
    :cond_2
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "Invalid position"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getPositionInSection(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "currentPos":I
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 261
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 262
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 263
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;

    .line 264
    .local v3, "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->getSectionItemsTotal()I

    move-result v4

    .line 266
    .local v4, "sectionTotal":I
    if-lt p1, v0, :cond_1

    add-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gt p1, v5, :cond_1

    .line 267
    sub-int v6, p1, v0

    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->isHasHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    sub-int v5, v6, v5

    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 270
    :cond_1
    add-int/2addr v0, v4

    .line 271
    goto :goto_0

    .line 274
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    .end local v3    # "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    .end local v4    # "sectionTotal":I
    :cond_2
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "Invalid position"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "currentPos":I
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 73
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;

    .line 76
    .local v3, "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->getSectionItemsTotal()I

    move-result v4

    .line 78
    .local v4, "sectionTotal":I
    if-lt p2, v0, :cond_0

    add-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gt p2, v5, :cond_0

    .line 80
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->isHasHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    if-ne p2, v0, :cond_1

    .line 82
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->onHeaderBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_1
    add-int/2addr v0, v4

    .line 90
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->getPositionInSection(I)I

    move-result v5

    invoke-direct {p0, p1, v5, p2, v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->onBindContentViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;IILcom/fimi/app/x8s/adapter/section/X8B2oxSection;)V

    goto :goto_1

    .line 93
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    .end local v3    # "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    .end local v4    # "sectionTotal":I
    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 57
    if-nez p2, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_black_box_header_layout:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxHeaderViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxHeaderViewHolder;-><init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Landroid/view/View;)V

    .line 66
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_black_box_item_layout:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    .restart local v1    # "view":Landroid/view/View;
    new-instance v0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;-><init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Landroid/view/View;)V

    .line 64
    .local v0, "holder":Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;
    goto :goto_0

    .line 66
    .end local v0    # "holder":Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHeaderBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/String;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 185
    check-cast p1, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxHeaderViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxHeaderViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public uploadAll()V
    .locals 9

    .prologue
    .line 191
    iget-object v7, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->sections:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 192
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;>;"
    const/4 v4, 0x0

    .line 193
    .local v4, "position":I
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;

    .line 196
    .local v5, "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    invoke-virtual {v5}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->getSectionItemsTotal()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 197
    .local v3, "listSize":I
    add-int/lit8 v4, v4, 0x1

    .line 198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 199
    invoke-virtual {v5}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/app/x8s/entity/X8B2oxFile;

    .line 200
    .local v6, "x8B2oxFile":Lcom/fimi/app/x8s/entity/X8B2oxFile;
    invoke-virtual {v6}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v7

    sget-object v8, Lcom/fimi/kernel/fds/FdsUploadState;->IDLE:Lcom/fimi/kernel/fds/FdsUploadState;

    if-eq v7, v8, :cond_1

    .line 201
    invoke-virtual {v6}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v7

    sget-object v8, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    if-eq v7, v8, :cond_1

    .line 202
    invoke-virtual {v6}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v7

    sget-object v8, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    if-ne v7, v8, :cond_2

    .line 203
    :cond_1
    invoke-virtual {v6, v1}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->setSectionPostion(I)V

    .line 204
    invoke-virtual {v6, v4}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->setItemPostion(I)V

    .line 205
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/fimi/kernel/fds/FdsManager;->startDownload(Lcom/fimi/kernel/fds/IFdsFileModel;)V

    .line 207
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;>;"
    .end local v1    # "i":I
    .end local v3    # "listSize":I
    .end local v5    # "section":Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
    .end local v6    # "x8B2oxFile":Lcom/fimi/app/x8s/entity/X8B2oxFile;
    :cond_3
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->notifyDataSetChanged()V

    .line 212
    return-void
.end method
