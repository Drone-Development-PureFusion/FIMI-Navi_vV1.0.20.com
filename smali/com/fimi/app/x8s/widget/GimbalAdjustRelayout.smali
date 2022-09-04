.class public Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;
.super Landroid/widget/RelativeLayout;
.source "GimbalAdjustRelayout.java"


# instance fields
.field btnAdd:Landroid/widget/Button;

.field btnSub:Landroid/widget/Button;

.field etxValue:Landroid/widget/EditText;

.field mContext:Landroid/content/Context;

.field tvGimbalModel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->item_gimable_adjust:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_add:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->btnAdd:Landroid/widget/Button;

    .line 29
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_sub:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->btnSub:Landroid/widget/Button;

    .line 30
    sget v0, Lcom/fimi/app/x8s/R$id;->etx_value:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->etxValue:Landroid/widget/EditText;

    .line 31
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_gimbal_model:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->tvGimbalModel:Landroid/widget/TextView;

    .line 32
    return-void
.end method


# virtual methods
.method public getBtnAdd()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->btnAdd:Landroid/widget/Button;

    return-object v0
.end method

.method public getBtnSub()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->btnSub:Landroid/widget/Button;

    return-object v0
.end method

.method public getEtxValue()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->etxValue:Landroid/widget/EditText;

    return-object v0
.end method

.method public getTvGimbalModel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->tvGimbalModel:Landroid/widget/TextView;

    return-object v0
.end method
