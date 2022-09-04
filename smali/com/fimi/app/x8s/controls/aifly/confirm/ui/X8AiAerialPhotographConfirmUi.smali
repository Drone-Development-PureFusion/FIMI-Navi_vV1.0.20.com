.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;
.super Ljava/lang/Object;
.source "X8AiAerialPhotographConfirmUi.java"

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


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_aerial_photograph_confirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->contentView:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->initViews(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->initActions()V

    .line 27
    return-void
.end method


# virtual methods
.method public initActions()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->imgReturn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 34
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->imgReturn:Landroid/view/View;

    .line 35
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->btnOk:Landroid/view/View;

    .line 36
    sget v0, Lcom/fimi/app/x8s/R$id;->cb_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->cbTip:Landroid/widget/CheckBox;

    .line 37
    sget v0, Lcom/fimi/app/x8s/R$id;->img_aerial_photo_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->imgFlag:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->imgFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_aerial_photograph:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 50
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->cbTip:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiAerialPhotographCourse(Z)V

    .line 58
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onAerialPhotographConfirmOkClick()V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiAerialPhotographCourse(Z)V

    goto :goto_1
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 0
    .param p1, "mX8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .line 31
    return-void
.end method
