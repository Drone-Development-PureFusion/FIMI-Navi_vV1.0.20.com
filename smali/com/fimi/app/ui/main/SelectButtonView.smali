.class public Lcom/fimi/app/ui/main/SelectButtonView;
.super Landroid/widget/FrameLayout;
.source "SelectButtonView.java"


# instance fields
.field buttons:[Landroid/widget/Button;

.field length:I

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lcom/fimi/app/ui/main/SelectButtonView;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public initView(I)V
    .locals 8
    .param p1, "length"    # I

    .prologue
    const/4 v5, -0x1

    .line 32
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/fimi/app/ui/main/SelectButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    new-array v5, p1, [Landroid/widget/Button;

    iput-object v5, p0, Lcom/fimi/app/ui/main/SelectButtonView;->buttons:[Landroid/widget/Button;

    .line 38
    iput p1, p0, Lcom/fimi/app/ui/main/SelectButtonView;->length:I

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 40
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/fimi/app/ui/main/SelectButtonView;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41500000    # 13.0f

    .line 41
    invoke-static {v5, v6}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/fimi/app/ui/main/SelectButtonView;->mContext:Landroid/content/Context;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v6, v7}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v0, "btnLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/Button;

    iget-object v5, p0, Lcom/fimi/app/ui/main/SelectButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 43
    .local v1, "button":Landroid/widget/Button;
    const v5, 0x7f020134

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 44
    iget-object v5, p0, Lcom/fimi/app/ui/main/SelectButtonView;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v5, v6}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 45
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v5, p0, Lcom/fimi/app/ui/main/SelectButtonView;->buttons:[Landroid/widget/Button;

    aput-object v1, v5, v2

    .line 47
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "btnLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "button":Landroid/widget/Button;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/fimi/app/ui/main/SelectButtonView;->addView(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public setProductPositon(I)V
    .locals 3
    .param p1, "positon"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/fimi/app/ui/main/SelectButtonView;->length:I

    if-ge v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/fimi/app/ui/main/SelectButtonView;->buttons:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 57
    :cond_1
    return-void
.end method
