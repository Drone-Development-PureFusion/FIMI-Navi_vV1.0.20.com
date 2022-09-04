.class public Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PhotoParamsViewHolder.java"


# instance fields
.field public final VALUE_VIDEO_RESOLUTION_1080P:Ljava/lang/String;

.field public final VALUE_VIDEO_RESOLUTION_2K:Ljava/lang/String;

.field public final VALUE_VIDEO_RESOLUTION_4K:Ljava/lang/String;

.field public final VALUE_VIDEO_RESOLUTION_720P:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gotoIcon:Landroid/widget/ImageView;

.field private keytv:Landroid/widget/TextView;

.field private valuetv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    const-string v0, "3840x2160"

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->VALUE_VIDEO_RESOLUTION_4K:Ljava/lang/String;

    .line 60
    const-string v0, "2560x1440"

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->VALUE_VIDEO_RESOLUTION_2K:Ljava/lang/String;

    .line 61
    const-string v0, "1920x1080"

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->VALUE_VIDEO_RESOLUTION_1080P:Ljava/lang/String;

    .line 62
    const-string v0, "1280x720"

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->VALUE_VIDEO_RESOLUTION_720P:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->context:Landroid/content/Context;

    .line 23
    sget v0, Lcom/fimi/app/x8s/R$id;->item_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->keytv:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/fimi/app/x8s/R$id;->item_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->valuetv:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/fimi/app/x8s/R$id;->goto_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->gotoIcon:Landroid/widget/ImageView;

    .line 26
    return-void
.end method


# virtual methods
.method public initItemData(Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;Z)V
    .locals 2
    .param p1, "itemEntity"    # Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;
    .param p2, "isEnable"    # Z

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->keytv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getNickParam()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->valuetv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getNickParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video_resolution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->updateResolutionValue(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->valuetv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateResolutionValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "modelValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 65
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "values":[Ljava/lang/String;
    aget-object v1, v0, v4

    const-string v2, "P"

    const-string v3, "FPS"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 68
    aget-object v1, v0, v5

    const-string v2, "3840x2160"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4K "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->valuetv:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_3
    aget-object v1, v0, v5

    const-string v2, "2560x1440"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2.5K "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 72
    :cond_4
    aget-object v1, v0, v5

    const-string v2, "1920x1080"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1080P "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 74
    :cond_5
    aget-object v1, v0, v5

    const-string v2, "1280x720"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "720P "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
