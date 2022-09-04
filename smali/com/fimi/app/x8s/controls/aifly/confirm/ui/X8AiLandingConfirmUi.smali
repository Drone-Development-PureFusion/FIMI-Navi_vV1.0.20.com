.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;
.super Ljava/lang/Object;
.source "X8AiLandingConfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnOk:Landroid/view/View;

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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_landing_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->contentView:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->initViews(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->initActions()V

    .line 26
    return-void
.end method


# virtual methods
.method public initActions()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->imgReturn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 33
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->imgReturn:Landroid/view/View;

    .line 34
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->btnOk:Landroid/view/View;

    .line 35
    sget v0, Lcom/fimi/app/x8s/R$id;->img_landing_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->imgFlag:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->imgFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_landing_flag:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 48
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onTakeOffOrLandingClick()V

    goto :goto_0
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 57
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 0
    .param p1, "mX8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLandingConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .line 30
    return-void
.end method
