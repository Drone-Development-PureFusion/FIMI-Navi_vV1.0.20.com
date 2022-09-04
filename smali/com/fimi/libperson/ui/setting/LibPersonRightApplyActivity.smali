.class public Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;
.super Lcom/fimi/libperson/BasePersonActivity;
.source "LibPersonRightApplyActivity.java"

# interfaces
.implements Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;


# instance fields
.field private libPersonRightApplyPresenter:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

.field private libpersonBtnApplySend:Landroid/widget/Button;

.field private libpersonEtEmail:Landroid/widget/EditText;

.field private libpersonTvApplyHint:Landroid/widget/TextView;

.field private mTitleView:Lcom/fimi/libperson/widget/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fimi/libperson/BasePersonActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libpersonEtEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->sendBtnIsClick(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;)Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libPersonRightApplyPresenter:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    invoke-direct {v0, p0, p0}, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;-><init>(Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libPersonRightApplyPresenter:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    .line 51
    sget v0, Lcom/fimi/libperson/R$id;->title_view:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/widget/TitleView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    .line 52
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$string;->libperson_user_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setTvTitle(Ljava/lang/String;)V

    .line 53
    sget v0, Lcom/fimi/libperson/R$id;->libperson_tv_apply_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libpersonTvApplyHint:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libpersonTvApplyHint:Landroid/widget/TextView;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 55
    sget v0, Lcom/fimi/libperson/R$id;->libperson_et_email:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libpersonEtEmail:Landroid/widget/EditText;

    .line 56
    sget v0, Lcom/fimi/libperson/R$id;->libperson_btn_apply_send:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libpersonBtnApplySend:Landroid/widget/Button;

    .line 57
    invoke-direct {p0, v3}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->sendBtnIsClick(Z)V

    .line 59
    return-void
.end method

.method private sendBtnIsClick(Z)V
    .locals 2
    .param p1, "isClick"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libpersonBtnApplySend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libpersonBtnApplySend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public doTrans()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libpersonEtEmail:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$1;-><init>(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->libpersonBtnApplySend:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$2;-><init>(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/fimi/libperson/R$layout;->libperson_activity_right_apply:I

    return v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->initView()V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/fimi/libperson/BasePersonActivity;->onDestroy()V

    .line 94
    return-void
.end method

.method public sendFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 117
    invoke-static {}, Lcom/fimi/widget/NetworkLoadManage;->dismiss()V

    .line 118
    return-void
.end method

.method public sendSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 111
    invoke-static {}, Lcom/fimi/widget/NetworkLoadManage;->dismiss()V

    .line 112
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 36
    return-void
.end method
