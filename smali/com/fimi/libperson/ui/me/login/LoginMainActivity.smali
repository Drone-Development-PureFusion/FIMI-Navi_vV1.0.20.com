.class public Lcom/fimi/libperson/ui/me/login/LoginMainActivity;
.super Lcom/fimi/libperson/BasePersonActivity;
.source "LoginMainActivity.java"

# interfaces
.implements Lcom/fimi/libperson/ivew/ILoginView;
.implements Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$OnResetPasswordListerner;
.implements Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;
    }
.end annotation


# instance fields
.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field isEmail:Z

.field private isMainLand:Z

.field private isShowIphonePassword:Z

.field private isShowPassword:Z

.field loginPresenter:Lcom/fimi/libperson/presenter/LoginPresenter;

.field mBtnLoginEmail:Landroid/widget/Button;

.field mBtnLoginIphone:Landroid/widget/Button;

.field mCbSelectService:Landroid/widget/CheckBox;

.field mEtAccount:Landroid/widget/EditText;

.field mEtEmailAccount:Landroid/widget/EditText;

.field mEtEmailPassword:Landroid/widget/EditText;

.field mEtPassword:Landroid/widget/EditText;

.field private mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

.field private mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

.field mIvReturn:Landroid/widget/ImageView;

.field mIvShowIphonePassword:Landroid/widget/ImageView;

.field mIvShowPassword:Landroid/widget/ImageView;

.field private mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field mRlEmail:Landroid/widget/RelativeLayout;

.field mRlIphone:Landroid/widget/RelativeLayout;

.field mTitleView:Lcom/fimi/libperson/widget/TitleView;

.field mTvAreaCode:Landroid/widget/TextView;

.field mTvEmailErrorHint:Landroid/widget/TextView;

.field mTvErrorHint:Landroid/widget/TextView;

.field mTvForgetHint:Landroid/widget/TextView;

.field mTvForgetIphoneHint:Landroid/widget/TextView;

.field mTvSelectCountry:Landroid/widget/TextView;

.field mTvTitleNmae:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/fimi/libperson/BasePersonActivity;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isShowPassword:Z

    .line 70
    iput-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isShowIphonePassword:Z

    .line 72
    iput-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isEmail:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isMainLand:Z

    .line 334
    new-instance v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$10;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$10;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method private OnClickListerner()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$1;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setTvRightListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mIvShowPassword:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$2;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mIvShowIphonePassword:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$4;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$4;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$5;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$5;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetHint:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetIphoneHint:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$7;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$7;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mIvReturn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvSelectCountry:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$9;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$9;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 328
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 329
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 330
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 332
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->showEmail(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isMainLand:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->judgeEmailIsClick()V

    return-void
.end method

.method static synthetic access$1400(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginBtnIsClick(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isShowPassword:Z

    return v0
.end method

.method static synthetic access$202(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isShowPassword:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isShowIphonePassword:Z

    return v0
.end method

.method static synthetic access$302(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isShowIphonePassword:Z

    return p1
.end method

.method static synthetic access$400(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/support/v4/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    return-object v0
.end method

.method private getEditTextCursorIndex(Landroid/widget/EditText;)I
    .locals 1
    .param p1, "mEditText"    # Landroid/widget/EditText;

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    sget v0, Lcom/fimi/libperson/R$id;->iv_return:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mIvReturn:Landroid/widget/ImageView;

    .line 125
    sget v0, Lcom/fimi/libperson/R$id;->title_view:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/widget/TitleView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    .line 126
    sget v0, Lcom/fimi/libperson/R$id;->tv_select_country:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvSelectCountry:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/fimi/libperson/R$id;->tv_area_code:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvAreaCode:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/fimi/libperson/R$id;->et_account:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    .line 130
    sget v0, Lcom/fimi/libperson/R$id;->et_password:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    .line 132
    sget v0, Lcom/fimi/libperson/R$id;->tv_error_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvErrorHint:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/fimi/libperson/R$id;->cb_iphone_select_service:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mCbSelectService:Landroid/widget/CheckBox;

    .line 134
    sget v0, Lcom/fimi/libperson/R$id;->et_email_account:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    .line 136
    sget v0, Lcom/fimi/libperson/R$id;->et_email_password:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    .line 138
    sget v0, Lcom/fimi/libperson/R$id;->tv_email_error_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/fimi/libperson/R$id;->tv_forget_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetHint:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/fimi/libperson/R$id;->tv_forget_iphone_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetIphoneHint:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/fimi/libperson/R$id;->btn_login_phone:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    .line 142
    sget v0, Lcom/fimi/libperson/R$id;->btn_login_email:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    .line 143
    sget v0, Lcom/fimi/libperson/R$id;->rl_iphone:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mRlIphone:Landroid/widget/RelativeLayout;

    .line 144
    sget v0, Lcom/fimi/libperson/R$id;->rl_email:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    .line 145
    sget v0, Lcom/fimi/libperson/R$id;->iv_show_password:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mIvShowPassword:Landroid/widget/ImageView;

    .line 146
    sget v0, Lcom/fimi/libperson/R$id;->iv_show_iphone_password:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mIvShowIphonePassword:Landroid/widget/ImageView;

    .line 147
    sget v0, Lcom/fimi/libperson/R$id;->tv_title_name:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    .line 152
    invoke-direct {p0, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginBtnIsClick(Z)V

    .line 153
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_login_main_phone_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v0, v2}, Lcom/fimi/libperson/widget/TitleView;->setTvRightVisible(I)V

    .line 155
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setTvTitle(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mRlIphone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    new-instance v0, Lcom/fimi/libperson/presenter/LoginPresenter;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/presenter/LoginPresenter;-><init>(Lcom/fimi/libperson/ivew/ILoginView;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginPresenter:Lcom/fimi/libperson/presenter/LoginPresenter;

    .line 161
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvSelectCountry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$string;->libperson_service_china:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeViewLanTing(Landroid/content/res/AssetManager;Landroid/view/View;)V

    .line 169
    return-void
.end method

.method private judgeEmailIsClick()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    .line 349
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    .line 350
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginBtnIsClick(Z)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginBtnIsClick(Z)V

    goto :goto_0
.end method

.method private loginBtnIsClick(Z)V
    .locals 3
    .param p1, "isClick"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 495
    if-eqz p1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 502
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 500
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showEmail(Z)V
    .locals 6
    .param p1, "isEmail"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 505
    if-eqz p1, :cond_1

    .line 506
    iput-boolean v4, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isEmail:Z

    .line 507
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetIphoneHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    sget v1, Lcom/fimi/libperson/R$string;->login_iphone_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setTvRightText(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_login_main_email_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mRlIphone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 516
    invoke-direct {p0, v4}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginBtnIsClick(Z)V

    .line 537
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-direct {p0, v3}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginBtnIsClick(Z)V

    goto :goto_0

    .line 521
    :cond_1
    iput-boolean v3, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isEmail:Z

    .line 522
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    sget v1, Lcom/fimi/libperson/R$string;->login_email_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setTvRightText(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_login_main_phone_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mRlIphone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetIphoneHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_forget_password:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 532
    invoke-direct {p0, v4}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginBtnIsClick(Z)V

    goto :goto_0

    .line 534
    :cond_2
    invoke-direct {p0, v3}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginBtnIsClick(Z)V

    goto :goto_0
.end method


# virtual methods
.method public doTrans()V
    .locals 4

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->OnClickListerner()V

    .line 174
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 175
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/fimi/libperson/R$id;->fl_fp:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .line 176
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-direct {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;-><init>()V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .line 178
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$id;->fl_fp:I

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    const-string v3, "forgetPassword"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/fimi/libperson/R$id;->fl_fp_iphone:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .line 183
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-direct {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;-><init>()V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .line 185
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$id;->fl_fp_iphone:I

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    const-string v3, "forget_iphone_password_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 189
    :goto_1
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public emailLoginResult(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 447
    if-eqz p1, :cond_1

    .line 449
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 450
    const-string v1, "activity://app.main"

    invoke-static {p0, v1}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 451
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->readyGoThenKillAllActivity(Landroid/content/Intent;)V

    .line 458
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    if-eqz p2, :cond_0

    .line 454
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public freorgottenPasswords(Z)V
    .locals 3
    .param p1, "isFrequently"    # Z

    .prologue
    .line 476
    if-eqz p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_forget_password_frequently:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvForgetHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_forget_password:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public getCodeResult(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 425
    if-nez p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvErrorHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_0
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/fimi/libperson/R$layout;->activity_login_main:I

    return v0
.end method

.method public initData()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->initView()V

    .line 94
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    const-string v3, "sp_key_user_info_flag"

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "isEmailStr":Ljava/lang/String;
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    const-string v3, "service_item_key"

    const-class v4, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/region/ServiceItem;

    .line 98
    .local v1, "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/fimi/kernel/region/ServiceItem;->getInfo()I

    move-result v2

    sget v3, Lcom/fimi/kernel/R$string;->region_Mainland_China:I

    if-ne v2, v3, :cond_3

    .line 99
    :cond_0
    iput-boolean v6, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isMainLand:Z

    .line 100
    if-eqz v0, :cond_1

    .line 101
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-direct {p0, v6}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->showEmail(Z)V

    .line 103
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    const-string v4, "sp_key_user_info_email_or_iphone"

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-direct {p0, v5}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->showEmail(Z)V

    .line 107
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    const-string v4, "sp_key_user_info_email_or_iphone"

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 112
    :cond_3
    iput-boolean v5, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isMainLand:Z

    .line 113
    invoke-direct {p0, v6}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->showEmail(Z)V

    .line 114
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    const-string v4, "sp_key_user_info_email_or_iphone"

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 116
    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v2, v5}, Lcom/fimi/libperson/widget/TitleView;->setRightTvIsVisible(Z)V

    goto :goto_0
.end method

.method public iphoneLoginResult(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 433
    if-eqz p1, :cond_1

    .line 435
    const-string v1, "activity://app.main"

    invoke-static {p0, v1}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 436
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->readyGoThenKillAllActivity(Landroid/content/Intent;)V

    .line 443
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    if-eqz p2, :cond_0

    .line 439
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvErrorHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvErrorHint:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public loginSuccess()V
    .locals 2

    .prologue
    .line 485
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 486
    const-string v1, "activity://app.main"

    invoke-static {p0, v1}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 487
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->readyGoThenKillAllActivity(Landroid/content/Intent;)V

    .line 488
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 359
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 360
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getState()Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    move-result-object v1

    sget-object v2, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v1, v2, :cond_1

    .line 362
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setBack()V

    .line 363
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 364
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v2, Lcom/fimi/libperson/R$string;->login_login_main_email_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-boolean v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isMainLand:Z

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v1, v0}, Lcom/fimi/libperson/widget/TitleView;->setTvRightVisible(I)V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 390
    :goto_0
    return v0

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setBack()V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getState()Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    move-result-object v1

    sget-object v2, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    if-ne v1, v2, :cond_3

    .line 377
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setBack()V

    .line 378
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 379
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v2, Lcom/fimi/libperson/R$string;->login_login_main_phone_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v1, v0}, Lcom/fimi/libperson/widget/TitleView;->setTvRightVisible(I)V

    .line 381
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_3
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setBack()V

    goto :goto_0

    .line 390
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/fimi/libperson/BasePersonActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public resetIphoneSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 415
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetIphonePasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setState(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;)V

    .line 416
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_login_main_phone_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v0, v2}, Lcom/fimi/libperson/widget/TitleView;->setTvRightVisible(I)V

    .line 418
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 421
    return-void
.end method

.method public resetSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 401
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mForgetPasswordFragment:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setState(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;)V

    .line 402
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_login_main_email_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->isMainLand:Z

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v0, v2}, Lcom/fimi/libperson/widget/TitleView;->setTvRightVisible(I)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 409
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/fimi/libperson/BasePersonActivity;->setStatusBarColor()V

    .line 83
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 84
    return-void
.end method

.method public updateSeconds(ZI)V
    .locals 0
    .param p1, "isComplete"    # Z
    .param p2, "seconds"    # I

    .prologue
    .line 472
    return-void
.end method
