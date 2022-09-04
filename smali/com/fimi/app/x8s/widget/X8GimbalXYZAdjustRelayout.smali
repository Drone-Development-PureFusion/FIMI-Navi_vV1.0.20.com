.class public Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;
.super Landroid/widget/RelativeLayout;
.source "X8GimbalXYZAdjustRelayout.java"


# instance fields
.field mContext:Landroid/content/Context;

.field x8BtnGimbalXyzAdd:Landroid/widget/Button;

.field x8BtnGimbalXyzSubtract:Landroid/widget/Button;

.field x8TvGimbalXyzName:Landroid/widget/TextView;

.field x8TvGimbalXyzValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_gimable_xyz_adjust_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_btn_gimbal_xyz_add:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->x8BtnGimbalXyzAdd:Landroid/widget/Button;

    .line 28
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_btn_gimbal_xyz_subtract:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->x8BtnGimbalXyzSubtract:Landroid/widget/Button;

    .line 29
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_tv_gimbal_xyz_name:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->x8TvGimbalXyzName:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_tv_gimbal_xyz_value:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->x8TvGimbalXyzValue:Landroid/widget/TextView;

    .line 31
    return-void
.end method


# virtual methods
.method public getBtnGimbalXyzAdd()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->x8BtnGimbalXyzAdd:Landroid/widget/Button;

    return-object v0
.end method

.method public getBtnGimbalXyzSubtract()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->x8BtnGimbalXyzSubtract:Landroid/widget/Button;

    return-object v0
.end method

.method public getTvGimbalXyzName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->x8TvGimbalXyzName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvGimbalXyzValue()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->x8TvGimbalXyzValue:Landroid/widget/TextView;

    return-object v0
.end method
