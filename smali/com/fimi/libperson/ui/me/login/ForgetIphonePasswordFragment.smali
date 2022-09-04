.class public Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;
.super Lcom/fimi/kernel/base/BaseFragment;
.source "ForgetIphonePasswordFragment.java"

# interfaces
.implements Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;,
        Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;,
        Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ForgetIphonePasswordFra"


# instance fields
.field private isShowPassword:Z

.field private isShowPasswordAgain:Z

.field mBtnFiLoginIphone:Landroid/widget/Button;

.field mEtFiAccount:Landroid/widget/EditText;

.field mEtFiVerification:Landroid/widget/EditText;

.field mEtNewPassword:Landroid/widget/EditText;

.field mEtNewPasswordAgain:Landroid/widget/EditText;

.field private mForgetIphonePasswordPresenter:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

.field mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

.field mIvNewPasswordUnified:Landroid/widget/ImageView;

.field mIvShowPassword:Landroid/widget/ImageView;

.field mIvShowPasswordAgain:Landroid/widget/ImageView;

.field private mListerner:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;

.field private mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

.field mTvFiAreaCode:Landroid/widget/TextView;

.field mTvFiErrorHint:Landroid/widget/TextView;

.field mTvFiGetValidationCode:Landroid/widget/TextView;

.field mTvFiPasswordErrorHint:Landroid/widget/TextView;

.field mTvFiSelectCountry:Landroid/widget/TextView;

.field mTvFiTitleSubName:Landroid/widget/TextView;

.field mTvTitleSubName:Landroid/widget/TextView;

.field mVNpDivider:Landroid/view/View;

.field mVNpDividerAgain:Landroid/view/View;

.field mView1:Landroid/view/View;

.field mView2:Landroid/view/View;

.field mViewDivide:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseFragment;-><init>()V

    .line 83
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    .line 205
    new-instance v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$5;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$5;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method private OnClickListerner()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$1;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mBtnFiLoginIphone:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPassword:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$3;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 200
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 201
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 202
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mForgetIphonePasswordPresenter:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->isShowPassword:Z

    return v0
.end method

.method static synthetic access$402(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->isShowPassword:Z

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->isShowPasswordAgain:Z

    return v0
.end method

.method static synthetic access$502(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->isShowPasswordAgain:Z

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showClickState(Z)V

    return-void
.end method

.method private getEmailVerficationSpannableString()Landroid/text/SpannableString;
    .locals 8

    .prologue
    const/16 v7, 0x21

    .line 518
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/libperson/R$string;->login_email_send_hint1:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "str1":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/libperson/R$string;->login_send_email_hint2:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 521
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

    .line 522
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

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

    .line 524
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 525
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

    .line 524
    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 526
    new-instance v3, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$7;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$7;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)V

    .line 537
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 526
    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 538
    return-object v0
.end method

.method private getSpannableString()Landroid/text/SpannableString;
    .locals 9

    .prologue
    const/16 v8, 0x21

    .line 489
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/libperson/R$string;->login_send_email_hint1:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "str1":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/libperson/R$string;->login_send_email_hint2:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "str2":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/libperson/R$string;->login_send_email_hint3:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 493
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

    .line 494
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

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

    .line 496
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 497
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

    .line 496
    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 498
    new-instance v4, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$6;

    invoke-direct {v4, p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$6;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)V

    .line 509
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 498
    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 510
    return-object v0
.end method

.method private showClickState(Z)V
    .locals 2
    .param p1, "isClick"    # Z

    .prologue
    .line 476
    if-eqz p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mBtnFiLoginIphone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mBtnFiLoginIphone:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showState()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 366
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    if-ne v0, v1, :cond_3

    .line 367
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiSelectCountry:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mView1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mView2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiAreaCode:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mBtnFiLoginIphone:Landroid/widget/Button;

    sget v1, Lcom/fimi/libperson/R$string;->login_btn_next:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 375
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPassword:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mVNpDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mVNpDividerAgain:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mViewDivide:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 390
    invoke-direct {p0, v4}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showClickState(Z)V

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    const-string v0, "ForgetIphonePasswordFra"

    const-string v1, "showState: 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->selector_btn_register_get_verfication_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 432
    :cond_0
    :goto_1
    return-void

    .line 392
    :cond_1
    invoke-direct {p0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showClickState(Z)V

    goto :goto_0

    .line 399
    :cond_2
    const-string v0, "ForgetIphonePasswordFra"

    const-string v1, "showState: 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_get_verfication_unclick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiSelectCountry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mView1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mView2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiAreaCode:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_btn_verification:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 412
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mBtnFiLoginIphone:Landroid/widget/Button;

    sget v1, Lcom/fimi/libperson/R$string;->login_reset_password:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 415
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_input_password_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 416
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mViewDivide:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPassword:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mVNpDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mVNpDividerAgain:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    .line 426
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 427
    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setIvShowPassword(Z)V

    goto/16 :goto_1

    .line 429
    :cond_4
    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setIvShowPassword(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected doTrans()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->OnClickListerner()V

    .line 144
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/fimi/libperson/R$layout;->fragment_forget_iphone:I

    return v0
.end method

.method public getState()Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    return-object v0
.end method

.method protected initData(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 99
    sget v0, Lcom/fimi/libperson/R$id;->tv_fi_title_sub_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiTitleSubName:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/fimi/libperson/R$id;->tv_fi_select_country:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiSelectCountry:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/fimi/libperson/R$id;->et_fi_account:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    .line 102
    sget v0, Lcom/fimi/libperson/R$id;->et_fi_verification:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    .line 103
    sget v0, Lcom/fimi/libperson/R$id;->btn_fi_get_validation_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/fimi/libperson/R$id;->tv_title_sub_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvTitleSubName:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/fimi/libperson/R$id;->tv_fi_error_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/fimi/libperson/R$id;->tv_fi_password_error_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/fimi/libperson/R$id;->btn_fi_login_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mBtnFiLoginIphone:Landroid/widget/Button;

    .line 108
    sget v0, Lcom/fimi/libperson/R$id;->tv_fi_area_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiAreaCode:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/fimi/libperson/R$id;->view1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mView1:Landroid/view/View;

    .line 110
    sget v0, Lcom/fimi/libperson/R$id;->view2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mView2:Landroid/view/View;

    .line 112
    sget v0, Lcom/fimi/libperson/R$id;->v_divide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mViewDivide:Landroid/view/View;

    .line 113
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    .line 114
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password_again:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    .line 115
    sget v0, Lcom/fimi/libperson/R$id;->iv_new_password_unified:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    .line 116
    sget v0, Lcom/fimi/libperson/R$id;->iv_new_password_again_unified:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    .line 117
    sget v0, Lcom/fimi/libperson/R$id;->v_np_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mVNpDivider:Landroid/view/View;

    .line 118
    sget v0, Lcom/fimi/libperson/R$id;->v_np_again_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mVNpDividerAgain:Landroid/view/View;

    .line 119
    sget v0, Lcom/fimi/libperson/R$id;->iv_show_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPassword:Landroid/widget/ImageView;

    .line 120
    sget v0, Lcom/fimi/libperson/R$id;->iv_show_password_again:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiSelectCountry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$string;->libperson_service_china:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_get_verfication_unclick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPassword:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    new-instance v0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;-><init>(Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mForgetIphonePasswordPresenter:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    .line 137
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showState()V

    .line 138
    return-void
.end method

.method protected initMVP()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 89
    check-cast p1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mListerner:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;

    .line 90
    return-void
.end method

.method public resetPassword(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 259
    if-eqz p1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mListerner:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    .line 266
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showState()V

    .line 267
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mListerner:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;

    invoke-interface {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;->resetIphoneSuccess()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    if-eqz p2, :cond_0

    .line 271
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_error_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public sendIphone(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mBtnFiLoginIphone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    if-eqz p1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showState()V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    if-eqz p2, :cond_0

    .line 231
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_error_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public sendVerfication(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isSuccess"    # Z
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 239
    if-eqz p1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->selector_btn_register_get_verfication_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 243
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_btn_verification:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mForgetIphonePasswordPresenter:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-virtual {v0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->setStopTime()V

    .line 245
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showClickState(Z)V

    .line 247
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    .line 248
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showState()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    if-eqz p2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_error_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setBack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 459
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    if-ne v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->selector_btn_register_get_verfication_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 462
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_btn_verification:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 463
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mForgetIphonePasswordPresenter:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-virtual {v0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->setStopTime()V

    .line 464
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    if-ne v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 469
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    .line 470
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showState()V

    goto :goto_0
.end method

.method public setIphone(Ljava/lang/String;)V
    .locals 1
    .param p1, "iphone"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->showState()V

    .line 67
    return-void
.end method

.method public setIvShowPassword(Z)V
    .locals 4
    .param p1, "isShowPassword"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 435
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPassword:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mVNpDivider:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mVNpDividerAgain:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    return-void

    :cond_0
    move v0, v2

    .line 435
    goto :goto_0

    :cond_1
    move v0, v2

    .line 436
    goto :goto_1

    :cond_2
    move v0, v2

    .line 437
    goto :goto_2

    :cond_3
    move v0, v2

    .line 438
    goto :goto_3

    :cond_4
    move v0, v1

    .line 439
    goto :goto_4

    :cond_5
    move v2, v1

    .line 440
    goto :goto_5
.end method

.method public setListerner(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;)V
    .locals 0
    .param p1, "listerner"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mListerner:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$OnResetIphonePasswordListerner;

    .line 77
    return-void
.end method

.method public setState(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;)V
    .locals 0
    .param p1, "state"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mState:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    .line 445
    return-void
.end method

.method public updateSeconds(ZI)V
    .locals 3
    .param p1, "isComplete"    # Z
    .param p2, "seconds"    # I

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->selector_btn_register_get_verfication_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 282
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_btn_verification:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_get_verfication_unclick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$string;->login_second:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
