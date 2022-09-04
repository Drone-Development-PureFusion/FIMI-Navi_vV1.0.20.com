.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;
.super Ljava/lang/Object;
.source "X8AiFixedwingConfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnOk:Landroid/view/View;

.field private cbTip:Landroid/widget/CheckBox;

.field private contentView:Landroid/view/View;

.field private imgFlag:Landroid/widget/ImageView;

.field private imgReturn:Landroid/view/View;

.field private listener:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private tvFixedWing:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_fixedwing_confirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->contentView:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->initViews(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->initActions()V

    .line 33
    return-void
.end method


# virtual methods
.method public initActions()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->imgReturn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->imgReturn:Landroid/view/View;

    .line 41
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->btnOk:Landroid/view/View;

    .line 42
    sget v2, Lcom/fimi/app/x8s/R$id;->cb_ai_follow_confirm_ok:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->cbTip:Landroid/widget/CheckBox;

    .line 43
    sget v2, Lcom/fimi/app/x8s/R$id;->img_fixedwing:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->imgFlag:Landroid/widget/ImageView;

    .line 44
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->imgFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_fixedwing:I

    invoke-static {v3, v4}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_confirm_title1:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->tvFixedWing:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fixed_wing_tip1:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "prx":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3, v6, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3, v6, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->tvFixedWing:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 60
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->cbTip:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFixedwingCourse(Z)V

    .line 68
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onFixedwingConfirmOkClick()V

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFixedwingCourse(Z)V

    goto :goto_1
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 74
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 0
    .param p1, "mX8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiFixedwingConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .line 37
    return-void
.end method
