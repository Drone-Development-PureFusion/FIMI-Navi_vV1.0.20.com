.class public Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;
.super Landroid/widget/RelativeLayout;
.source "X8FollowSpeedContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;
    }
.end annotation


# instance fields
.field private MAX:I

.field private MIN:I

.field private accuracy:I

.field private fsv:Lcom/fimi/app/x8s/widget/X8FollowSpeedView;

.field private imgAntiClockwise:Landroid/widget/ImageView;

.field private imgClockwise:Landroid/widget/ImageView;

.field private listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;

.field private prex:Ljava/lang/String;

.field private speed:I

.field private tvSpeed:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    .line 28
    const/16 v0, 0x28

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MAX:I

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->accuracy:I

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_follow_speed_containt_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    sget v0, Lcom/fimi/app/x8s/R$id;->v_speed:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->fsv:Lcom/fimi/app/x8s/widget/X8FollowSpeedView;

    .line 43
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_speed:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->tvSpeed:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/fimi/app/x8s/R$id;->img_anti_clockwise:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->imgAntiClockwise:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/fimi/app/x8s/R$id;->img_clockwise:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->imgClockwise:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->fsv:Lcom/fimi/app/x8s/widget/X8FollowSpeedView;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setOnSpeedChangeListener(Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->imgAntiClockwise:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->imgClockwise:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onChange(FZ)V
    .locals 4
    .param p1, "percent"    # F
    .param p2, "isRight"    # Z

    .prologue
    const/4 v3, 0x1

    .line 78
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MAX:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->speed:I

    .line 80
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->speed:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float v0, v1, v2

    .line 81
    .local v0, "s":F
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->tvSpeed:Landroid/widget/TextView;

    invoke-static {v0, v3, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    if-eqz p2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->speed:I

    neg-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->speed:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 56
    .local v0, "id":I
    sget v2, Lcom/fimi/app/x8s/R$id;->img_anti_clockwise:I

    if-ne v0, v2, :cond_2

    .line 57
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->speed:I

    .line 58
    .local v1, "s":I
    if-ltz v1, :cond_1

    .line 59
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    sub-int/2addr v1, v2

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->fsv:Lcom/fimi/app/x8s/widget/X8FollowSpeedView;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MAX:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setLeftClick(III)V

    .line 73
    .end local v1    # "s":I
    :cond_0
    :goto_1
    return-void

    .line 61
    .restart local v1    # "s":I
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 64
    .end local v1    # "s":I
    :cond_2
    sget v2, Lcom/fimi/app/x8s/R$id;->img_clockwise:I

    if-ne v0, v2, :cond_0

    .line 65
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->speed:I

    .line 66
    .restart local v1    # "s":I
    if-ltz v1, :cond_3

    .line 67
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    sub-int/2addr v1, v2

    .line 71
    :goto_2
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->fsv:Lcom/fimi/app/x8s/widget/X8FollowSpeedView;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MAX:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setRightClick(III)V

    goto :goto_1

    .line 69
    :cond_3
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    add-int/2addr v1, v2

    goto :goto_2
.end method

.method public onSendData()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->speed:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->accuracy:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;->onSendSpeed(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public setMaxMin(III)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "min"    # I
    .param p3, "accuracy"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MAX:I

    .line 110
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    .line 111
    iput p3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->accuracy:I

    .line 112
    return-void
.end method

.method public setOnSendSpeedListener(Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;

    .line 100
    return-void
.end method

.method public setSpeed(I)V
    .locals 3
    .param p1, "s"    # I

    .prologue
    .line 104
    div-int/lit8 p1, p1, 0xa

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->fsv:Lcom/fimi/app/x8s/widget/X8FollowSpeedView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MAX:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setSpeed(II)V

    .line 106
    return-void
.end method

.method public setSpeed2(I)V
    .locals 3
    .param p1, "s"    # I

    .prologue
    .line 116
    if-ltz p1, :cond_0

    .line 117
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    sub-int/2addr p1, v0

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->fsv:Lcom/fimi/app/x8s/widget/X8FollowSpeedView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MAX:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setSpeed(II)V

    .line 122
    return-void

    .line 119
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->MIN:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method public switchUnity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 125
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->speed:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float v0, v1, v2

    .line 126
    .local v0, "s":F
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->tvSpeed:Landroid/widget/TextView;

    invoke-static {v0, v3, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method
