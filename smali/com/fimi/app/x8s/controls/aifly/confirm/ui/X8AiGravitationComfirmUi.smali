.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;
.super Ljava/lang/Object;
.source "X8AiGravitationComfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private contentView:Landroid/view/View;

.field private mBtnOk:Landroid/view/View;

.field private mCbTip:Landroid/widget/CheckBox;

.field private mImGravitationFlag:Landroid/widget/ImageView;

.field private mImgReturn:Landroid/view/View;

.field private mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_gravitation_comfirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->contentView:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->contentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->initViews(Landroid/view/View;)V

    .line 32
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->initActions()V

    .line 33
    return-void
.end method

.method private initActions()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mImgReturn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mBtnOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 41
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_fly_gravitation_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mImgReturn:Landroid/view/View;

    .line 42
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mBtnOk:Landroid/view/View;

    .line 43
    sget v0, Lcom/fimi/app/x8s/R$id;->cb_ai_gravitation_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mCbTip:Landroid/widget/CheckBox;

    .line 44
    sget v0, Lcom/fimi/app/x8s/R$id;->img_gravitation_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mImGravitationFlag:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mImGravitationFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_gravitation_flag:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 51
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_fly_gravitation_return:I

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_confirm_ok:I

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mCbTip:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFlyGravitation(Z)V

    .line 59
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onGravitationConfirmOkClick()V

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFlyGravitation(Z)V

    goto :goto_1
.end method

.method public setFcHeart(ZZ)V
    .locals 0
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 68
    return-void
.end method

.method public setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 0
    .param p1, "x8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationComfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .line 73
    return-void
.end method
