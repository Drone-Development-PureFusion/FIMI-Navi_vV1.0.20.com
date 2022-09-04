.class public Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;
.super Landroid/widget/RelativeLayout;
.source "X8AiFollowModeItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;
    }
.end annotation


# instance fields
.field private index:I

.field private isOpen:Z

.field private final item1:Landroid/widget/ImageView;

.field private final item2:Landroid/widget/ImageView;

.field private final item3:Landroid/widget/ImageView;

.field private listener:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;

.field private mode:[I

.field private final openClose:Landroid/widget/ImageView;

.field private res:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-array v0, v5, [I

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_follow_lockup:I

    aput v1, v0, v4

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_follow_parallel:I

    aput v1, v0, v3

    const/4 v1, 0x2

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_follow_normal:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->res:[I

    .line 26
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    .line 28
    iput v4, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->index:I

    .line 29
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->isOpen:Z

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_follow_item_mode_layout:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    sget v0, Lcom/fimi/app/x8s/R$id;->img_open_close:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->openClose:Landroid/widget/ImageView;

    .line 37
    sget v0, Lcom/fimi/app/x8s/R$id;->img_item1:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item1:Landroid/widget/ImageView;

    .line 38
    sget v0, Lcom/fimi/app/x8s/R$id;->img_item2:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item2:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/fimi/app/x8s/R$id;->img_item3:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item3:Landroid/widget/ImageView;

    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->openClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item3:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 46
    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public findIndexByMode(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-ne p1, v2, :cond_2

    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 113
    :cond_2
    if-nez p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 55
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_open_close:I

    if-ne v0, v1, :cond_2

    .line 56
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->isOpen:Z

    if-eqz v1, :cond_1

    .line 57
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->isOpen:Z

    .line 58
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->openClose:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_follow_mode_open:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 59
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item1:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iput-boolean v4, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->isOpen:Z

    .line 63
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->openClose:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_follow_mode_close:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 64
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 67
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->img_item1:I

    if-ne v0, v1, :cond_3

    .line 68
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->findIndexByMode(I)V

    .line 69
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->listener:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;->onModeSelect(I)V

    goto :goto_0

    .line 70
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->img_item2:I

    if-ne v0, v1, :cond_4

    .line 71
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->findIndexByMode(I)V

    .line 72
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->listener:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    aget v2, v2, v4

    invoke-interface {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;->onModeSelect(I)V

    goto :goto_0

    .line 73
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->img_item3:I

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->findIndexByMode(I)V

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->listener:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    aget v2, v2, v5

    invoke-interface {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;->onModeSelect(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->listener:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;

    .line 50
    return-void
.end method

.method public switchItem()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 80
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    aget v1, v2, v5

    .line 81
    .local v1, "temp":I
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->index:I

    aget v3, v3, v4

    aput v3, v2, v5

    .line 82
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->index:I

    aput v1, v2, v3

    .line 84
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->res:[I

    aget v1, v2, v5

    .line 85
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->res:[I

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->res:[I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->index:I

    aget v3, v3, v4

    aput v3, v2, v5

    .line 86
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->res:[I

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->index:I

    aput v1, v2, v3

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 89
    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->res:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 94
    :pswitch_1
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->res:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 97
    :pswitch_2
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->item3:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->res:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 101
    :cond_0
    const-string v2, "istep"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->mode:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
