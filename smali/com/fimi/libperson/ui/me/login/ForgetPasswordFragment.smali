.class public Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
.super Lcom/fimi/kernel/base/BaseFragment;
.source "ForgetPasswordFragment.java"

# interfaces
.implements Lcom/fimi/libperson/ivew/IForgetPasswordView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$OnResetPasswordListerner;,
        Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;,
        Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;
    }
.end annotation


# instance fields
.field private isShowPassword:Z

.field private isShowPasswordAgain:Z

.field mBtnSendEmail:Landroid/widget/Button;

.field mBtnVerfication:Landroid/widget/Button;

.field private mEmailAddressStr:Ljava/lang/String;

.field mEtFpEmailAccount:Landroid/widget/EditText;

.field mEtInputVerficationCode:Landroid/widget/EditText;

.field mEtNewPassword:Landroid/widget/EditText;

.field mEtNewPasswordAgain:Landroid/widget/EditText;

.field private mForgetPasswordPresenter:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

.field mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

.field mIvNewPasswordUnified:Landroid/widget/ImageView;

.field mIvShowPassword:Landroid/widget/ImageView;

.field mIvShowPasswordAgain:Landroid/widget/ImageView;

.field private mOnResetPasswordListerner:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$OnResetPasswordListerner;

.field private mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

.field mTvEmailaddress:Landroid/widget/TextView;

.field mTvFpHint:Landroid/widget/TextView;

.field mTvFpVerficationHint:Landroid/widget/TextView;

.field mTvTitleSubNmae:Landroid/widget/TextView;

.field mVNpDivider:Landroid/view/View;

.field mVNpDividerAgain:Landroid/view/View;

.field mViewDivide:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseFragment;-><init>()V

    .line 66
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    return-void
.end method

.method private OnClickListerner()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnSendEmail:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvShowPassword:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$3;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/text/SpannableString;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getEmailVerficationSpannableString()Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEmailAddressStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEmailAddressStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mForgetPasswordPresenter:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->isShowPassword:Z

    return v0
.end method

.method static synthetic access$502(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->isShowPassword:Z

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->isShowPasswordAgain:Z

    return v0
.end method

.method static synthetic access$602(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->isShowPasswordAgain:Z

    return p1
.end method

.method static synthetic access$700(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showClickState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/text/SpannableString;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getSpannableString()Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showBtnVerficationClickState(Z)V

    return-void
.end method

.method private getEmailVerficationSpannableString()Landroid/text/SpannableString;
    .locals 8

    .prologue
    const/16 v7, 0x21

    .line 523
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/libperson/R$string;->login_email_send_hint1:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "str1":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/libperson/R$string;->login_send_email_hint2:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "str2":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 527
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 529
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 530
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 529
    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 531
    new-instance v3, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$6;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$6;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)V

    .line 542
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 531
    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 543
    return-object v0
.end method

.method private getSpannableString()Landroid/text/SpannableString;
    .locals 9

    .prologue
    const/16 v8, 0x21

    .line 494
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/libperson/R$string;->login_send_email_hint1:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "str1":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/libperson/R$string;->login_send_email_hint2:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "str2":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/libperson/R$string;->login_send_email_hint3:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "str3":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 499
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 501
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 502
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 501
    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 503
    new-instance v4, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$5;

    invoke-direct {v4, p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$5;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)V

    .line 514
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 503
    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 515
    return-object v0
.end method

.method private showBtnVerficationClickState(Z)V
    .locals 2
    .param p1, "isClick"    # Z

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 487
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showClickState(Z)V
    .locals 2
    .param p1, "isClick"    # Z

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnSendEmail:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 478
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnSendEmail:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_2

    .line 352
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvEmailaddress:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvEmailaddress:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mViewDivide:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnSendEmail:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setIvShowPassword(Z)V

    .line 368
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-direct {p0, v5}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showClickState(Z)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-direct {p0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showClickState(Z)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->VERIFICATION_CODE:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_4

    .line 375
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvEmailaddress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvEmailaddress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEmailAddressStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mViewDivide:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    sget v1, Lcom/fimi/libperson/R$string;->login_ensure:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 384
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnSendEmail:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getEmailVerficationSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setIvShowPassword(Z)V

    .line 393
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 394
    invoke-direct {p0, v5}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showBtnVerficationClickState(Z)V

    goto :goto_0

    .line 396
    :cond_3
    invoke-direct {p0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showBtnVerficationClickState(Z)V

    goto :goto_0

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvEmailaddress:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mViewDivide:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    sget v1, Lcom/fimi/libperson/R$string;->login_reset_password:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 406
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnSendEmail:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 408
    invoke-direct {p0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showClickState(Z)V

    .line 409
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    invoke-virtual {p0, v5}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setIvShowPassword(Z)V

    .line 412
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    .line 413
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_5

    .line 414
    invoke-direct {p0, v5}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showBtnVerficationClickState(Z)V

    goto/16 :goto_0

    .line 416
    :cond_5
    invoke-direct {p0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showBtnVerficationClickState(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doTrans()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->OnClickListerner()V

    .line 131
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/fimi/libperson/R$layout;->fragment_forget_email:I

    return v0
.end method

.method public getState()Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    return-object v0
.end method

.method protected initData(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    .line 82
    sget v0, Lcom/fimi/libperson/R$id;->et_fp_email_account:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    .line 84
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    .line 85
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password_again:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    .line 86
    sget v0, Lcom/fimi/libperson/R$id;->v_divide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mViewDivide:Landroid/view/View;

    .line 87
    sget v0, Lcom/fimi/libperson/R$id;->iv_new_password_unified:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    .line 88
    sget v0, Lcom/fimi/libperson/R$id;->iv_new_password_again_unified:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    .line 91
    sget v0, Lcom/fimi/libperson/R$id;->et_input_verfication_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    .line 94
    sget v0, Lcom/fimi/libperson/R$id;->tv_fp_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/fimi/libperson/R$id;->tv_fp_verfication_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/fimi/libperson/R$id;->btn_send_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnSendEmail:Landroid/widget/Button;

    .line 97
    sget v0, Lcom/fimi/libperson/R$id;->btn_verfication:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    .line 98
    sget v0, Lcom/fimi/libperson/R$id;->tv_emailaddress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvEmailaddress:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/fimi/libperson/R$id;->tv_title_sub_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvTitleSubNmae:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/fimi/libperson/R$id;->v_np_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mVNpDivider:Landroid/view/View;

    .line 102
    sget v0, Lcom/fimi/libperson/R$id;->v_np_again_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mVNpDividerAgain:Landroid/view/View;

    .line 103
    sget v0, Lcom/fimi/libperson/R$id;->iv_show_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvShowPassword:Landroid/widget/ImageView;

    .line 104
    sget v0, Lcom/fimi/libperson/R$id;->iv_show_password_again:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-array v1, v5, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvEmailaddress:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    aput-object v2, v1, v4

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvTitleSubNmae:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvEmailaddress:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mViewDivide:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    new-instance v0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;-><init>(Lcom/fimi/libperson/ivew/IForgetPasswordView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mForgetPasswordPresenter:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    .line 124
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showState()V

    .line 125
    return-void
.end method

.method protected initMVP()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public inputVerfication(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    if-eqz p1, :cond_1

    .line 220
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    .line 221
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showState()V

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showClickState(Z)V

    .line 223
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_input_password_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_error_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 72
    check-cast p1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$OnResetPasswordListerner;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mOnResetPasswordListerner:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$OnResetPasswordListerner;

    .line 73
    return-void
.end method

.method public resetPassword(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    if-eqz p1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mOnResetPasswordListerner:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$OnResetPasswordListerner;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    .line 243
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showState()V

    .line 244
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mOnResetPasswordListerner:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$OnResetPasswordListerner;

    invoke-interface {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$OnResetPasswordListerner;->resetSuccess()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    if-eqz p2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_error_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public sendEmail(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnSendEmail:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    if-eqz p1, :cond_1

    .line 205
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->VERIFICATION_CODE:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    .line 206
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getEmailVerficationSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showState()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_error_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->VERIFICATION_CODE:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_2

    .line 454
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    .line 455
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvEmailaddress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showState()V

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_0

    .line 460
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->VERIFICATION_CODE:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    .line 461
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->showState()V

    goto :goto_0
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :cond_0
    return-void
.end method

.method public setIvShowPassword(Z)V
    .locals 4
    .param p1, "isShowPassword"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 422
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvShowPassword:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mVNpDivider:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mVNpDividerAgain:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    return-void

    :cond_0
    move v0, v2

    .line 422
    goto :goto_0

    :cond_1
    move v0, v2

    .line 423
    goto :goto_1

    :cond_2
    move v0, v2

    .line 424
    goto :goto_2

    :cond_3
    move v1, v2

    .line 425
    goto :goto_3
.end method

.method public setState(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;)V
    .locals 0
    .param p1, "state"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    .line 436
    return-void
.end method
