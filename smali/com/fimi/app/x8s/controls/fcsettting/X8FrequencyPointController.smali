.class public Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8FrequencyPointController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private imgRetruen:Landroid/view/View;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8FrequencyPointListener;

.field private vFrePoint:Lcom/fimi/app/x8s/widget/X8FrequencyPoint;

.field private views:[Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 29
    return-void
.end method


# virtual methods
.method public defaultVal()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->imgRetruen:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_main_general_frepoint_setting:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->contentView:Landroid/view/View;

    .line 35
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    .line 36
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->imgRetruen:Landroid/view/View;

    .line 37
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->v_fre_point:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->vFrePoint:Lcom/fimi/app/x8s/widget/X8FrequencyPoint;

    .line 38
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->contentView:Landroid/view/View;

    sget v4, Lcom/fimi/app/x8s/R$id;->tv_point1:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 39
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_point2:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v5

    .line 40
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->contentView:Landroid/view/View;

    sget v4, Lcom/fimi/app/x8s/R$id;->tv_point3:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 41
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->contentView:Landroid/view/View;

    sget v4, Lcom/fimi/app/x8s/R$id;->tv_point4:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 42
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->contentView:Landroid/view/View;

    sget v4, Lcom/fimi/app/x8s/R$id;->tv_point5:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 43
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->updateUi()V

    .line 44
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->initActions()V

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 110
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FrequencyPointListener;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FrequencyPointListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8FrequencyPointListener;->onBack()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_point1:I

    if-ne v1, v0, :cond_2

    .line 115
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setSelectIndex(I)V

    goto :goto_0

    .line 116
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_point2:I

    if-ne v1, v0, :cond_3

    .line 117
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setSelectIndex(I)V

    goto :goto_0

    .line 118
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_point3:I

    if-ne v1, v0, :cond_4

    .line 119
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setSelectIndex(I)V

    goto :goto_0

    .line 120
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_point4:I

    if-ne v1, v0, :cond_5

    .line 121
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setSelectIndex(I)V

    goto :goto_0

    .line 122
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_point5:I

    if-ne v1, v0, :cond_0

    .line 123
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setSelectIndex(I)V

    goto :goto_0
.end method

.method public onDroneConnected(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->updateUi()V

    .line 83
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8FrequencyPointListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8FrequencyPointListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FrequencyPointListener;

    .line 130
    return-void
.end method

.method public setSelectDisenable()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public setSelectIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 56
    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->views:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method public updateUi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->getDroneState()V

    .line 88
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->isConect:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->vFrePoint:Lcom/fimi/app/x8s/widget/X8FrequencyPoint;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->setPercent(I)V

    .line 90
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->isInSky:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setEnabled(Z)V

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setEnabled(Z)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->vFrePoint:Lcom/fimi/app/x8s/widget/X8FrequencyPoint;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->setPercent(I)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setSelectDisenable()V

    goto :goto_0
.end method
