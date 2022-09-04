.class public Lcom/fimi/libperson/ui/me/register/RegisterActivity;
.super Lcom/fimi/libperson/BasePersonActivity;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/fimi/libperson/ivew/IRegisterView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;
    }
.end annotation


# instance fields
.field private isCheckEmail:Z

.field private isCheckPhone:Z

.field isEmail:Z

.field isShowIphonePassword:Z

.field isShowPassword:Z

.field mBtnRegisterEmail:Landroid/widget/Button;

.field mBtnRegisterPhone:Landroid/widget/Button;

.field mCbEmailSelectService:Landroid/widget/CheckBox;

.field mCbIphoneSelectService:Landroid/widget/CheckBox;

.field mEtAccount:Landroid/widget/EditText;

.field mEtEmailAccount:Landroid/widget/EditText;

.field mEtEmailPassword:Landroid/widget/EditText;

.field mEtGetVelidationCode:Landroid/widget/EditText;

.field mEtIphonePassword:Landroid/widget/EditText;

.field mIvReturn:Landroid/widget/ImageView;

.field mIvShowIphonePassword:Landroid/widget/ImageView;

.field mIvShowPassword:Landroid/widget/ImageView;

.field private mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field mRlEmail:Landroid/widget/RelativeLayout;

.field mRlIphone:Landroid/widget/RelativeLayout;

.field mTitleView:Lcom/fimi/libperson/widget/TitleView;

.field mTvAreaCode:Landroid/widget/TextView;

.field mTvEmailErrorHint:Landroid/widget/TextView;

.field mTvEmailSelectService:Landroid/widget/TextView;

.field mTvErrorHint:Landroid/widget/TextView;

.field mTvForgetHint:Landroid/widget/TextView;

.field mTvGetValidationCode:Landroid/widget/TextView;

.field mTvIphoneSelectService:Landroid/widget/TextView;

.field mTvSelectCountry:Landroid/widget/TextView;

.field mTvTitleNmae:Landroid/widget/TextView;

.field registerPrenster:Lcom/fimi/libperson/presenter/RegisterPrenster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/fimi/libperson/BasePersonActivity;-><init>()V

    .line 86
    iput-boolean v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isShowPassword:Z

    .line 87
    iput-boolean v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isShowIphonePassword:Z

    .line 88
    iput-boolean v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isEmail:Z

    .line 89
    iput-boolean v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isCheckEmail:Z

    .line 90
    iput-boolean v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isCheckPhone:Z

    .line 346
    new-instance v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$11;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$11;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method private OnClickListener()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setTvRightListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mIvShowPassword:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$2;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mIvShowIphonePassword:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$4;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$4;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterPhone:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$5;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$5;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterEmail:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$6;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$6;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbEmailSelectService:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$7;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$7;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 308
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbIphoneSelectService:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 324
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvSelectCountry:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$9;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$9;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mIvReturn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$10;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$10;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtGetVelidationCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 339
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 340
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 341
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 342
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 344
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isCheckPhone:Z

    return v0
.end method

.method static synthetic access$102(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isCheckPhone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->registerBtnIsClick(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isCheckEmail:Z

    return v0
.end method

.method static synthetic access$302(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isCheckEmail:Z

    return p1
.end method

.method static synthetic access$400(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->judgeEmailIsClick()V

    return-void
.end method

.method static synthetic access$800(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getEditTextCursorIndex(Landroid/widget/EditText;)I
    .locals 1
    .param p1, "mEditText"    # Landroid/widget/EditText;

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method private getSpannableString()Landroid/text/SpannableString;
    .locals 11

    .prologue
    const/16 v10, 0x21

    .line 543
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service1:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "str1":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service2:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "str2":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service3:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "str3":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service4:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "str4":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service5:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 548
    .local v5, "str5":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 549
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 551
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 552
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 551
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 553
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 554
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 553
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 555
    new-instance v6, Lcom/fimi/libperson/ui/me/register/RegisterActivity$12;

    invoke-direct {v6, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$12;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    .line 567
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 555
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 568
    new-instance v6, Lcom/fimi/libperson/ui/me/register/RegisterActivity$13;

    invoke-direct {v6, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$13;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    .line 580
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 568
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 581
    return-object v0
.end method

.method private getSpannableStringEmail()Landroid/text/SpannableString;
    .locals 11

    .prologue
    const/16 v10, 0x21

    .line 589
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service1:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "str1":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service2:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "str2":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service3:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "str3":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service4:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "str4":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service_email5:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "str5":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 595
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 597
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 598
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 597
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 599
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/libperson/R$color;->register_agreement:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 600
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 599
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 601
    new-instance v6, Lcom/fimi/libperson/ui/me/register/RegisterActivity$14;

    invoke-direct {v6, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$14;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    .line 612
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 601
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 613
    new-instance v6, Lcom/fimi/libperson/ui/me/register/RegisterActivity$15;

    invoke-direct {v6, p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$15;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    .line 625
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 613
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 626
    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    new-instance v0, Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-direct {v0, p0, p0}, Lcom/fimi/libperson/presenter/RegisterPrenster;-><init>(Lcom/fimi/libperson/ivew/IRegisterView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->registerPrenster:Lcom/fimi/libperson/presenter/RegisterPrenster;

    .line 132
    sget v0, Lcom/fimi/libperson/R$id;->iv_return:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mIvReturn:Landroid/widget/ImageView;

    .line 133
    sget v0, Lcom/fimi/libperson/R$id;->title_view:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/widget/TitleView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    .line 134
    sget v0, Lcom/fimi/libperson/R$id;->tv_select_country:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvSelectCountry:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/fimi/libperson/R$id;->tv_area_code:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvAreaCode:Landroid/widget/TextView;

    .line 136
    sget v0, Lcom/fimi/libperson/R$id;->et_account:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtAccount:Landroid/widget/EditText;

    .line 137
    sget v0, Lcom/fimi/libperson/R$id;->et_password:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    .line 139
    sget v0, Lcom/fimi/libperson/R$id;->et_verification:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtGetVelidationCode:Landroid/widget/EditText;

    .line 140
    sget v0, Lcom/fimi/libperson/R$id;->btn_get_validation_code:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/fimi/libperson/R$id;->tv_error_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvErrorHint:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/fimi/libperson/R$id;->cb_iphone_select_service:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbIphoneSelectService:Landroid/widget/CheckBox;

    .line 143
    sget v0, Lcom/fimi/libperson/R$id;->cb_email_select_service:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbEmailSelectService:Landroid/widget/CheckBox;

    .line 144
    sget v0, Lcom/fimi/libperson/R$id;->et_email_account:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailAccount:Landroid/widget/EditText;

    .line 146
    sget v0, Lcom/fimi/libperson/R$id;->et_email_password:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    .line 148
    sget v0, Lcom/fimi/libperson/R$id;->tv_email_error_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    .line 149
    sget v0, Lcom/fimi/libperson/R$id;->tv_forget_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvForgetHint:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/fimi/libperson/R$id;->btn_register_phone:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterPhone:Landroid/widget/Button;

    .line 152
    sget v0, Lcom/fimi/libperson/R$id;->btn_register_email:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterEmail:Landroid/widget/Button;

    .line 153
    sget v0, Lcom/fimi/libperson/R$id;->rl_iphone:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlIphone:Landroid/widget/RelativeLayout;

    .line 154
    sget v0, Lcom/fimi/libperson/R$id;->rl_email:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    .line 155
    sget v0, Lcom/fimi/libperson/R$id;->iv_show_password:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mIvShowPassword:Landroid/widget/ImageView;

    .line 156
    sget v0, Lcom/fimi/libperson/R$id;->iv_show_iphone_password:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mIvShowIphonePassword:Landroid/widget/ImageView;

    .line 157
    sget v0, Lcom/fimi/libperson/R$id;->tv_iphone_select_service:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvIphoneSelectService:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/fimi/libperson/R$id;->tv_email_select_service:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailSelectService:Landroid/widget/TextView;

    .line 159
    sget v0, Lcom/fimi/libperson/R$id;->tv_title_name:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvTitleNmae:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_get_verfication_unclick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvIphoneSelectService:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbIphoneSelectService:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbIphoneSelectService:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailSelectService:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbEmailSelectService:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbEmailSelectService:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailSelectService:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getSpannableStringEmail()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailSelectService:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 171
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailSelectService:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 172
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvIphoneSelectService:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvIphoneSelectService:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 174
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvIphoneSelectService:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 175
    invoke-direct {p0, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->registerBtnIsClick(Z)V

    .line 177
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setTvTitle(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_register_main_phone_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v0, v3}, Lcom/fimi/libperson/widget/TitleView;->setTvRightVisible(I)V

    .line 180
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlIphone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtAccount:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailAccount:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtGetVelidationCode:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtGetVelidationCode:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    new-instance v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;-><init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvSelectCountry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$string;->libperson_service_china:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeViewLanTing(Landroid/content/res/AssetManager;Landroid/view/View;)V

    .line 193
    return-void
.end method

.method private judgeEmailIsClick()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    .line 529
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    .line 530
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isCheckEmail:Z

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->registerBtnIsClick(Z)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->registerBtnIsClick(Z)V

    goto :goto_0
.end method

.method private registerBtnIsClick(Z)V
    .locals 3
    .param p1, "isClick"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 642
    if-eqz p1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterPhone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterEmail:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 649
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterPhone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 647
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterEmail:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public doTrans()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->OnClickListener()V

    .line 198
    return-void
.end method

.method public getCodeResult(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isSuccess"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 376
    if-nez p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvErrorHint:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_get_verfication_unclick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/fimi/libperson/R$layout;->activity_register:I

    return v0
.end method

.method public goWebActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 630
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 631
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v1, "web_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string/jumbo v1, "web_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 634
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->overridePendingTransition(II)V

    .line 635
    return-void
.end method

.method public initData()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->initView()V

    .line 108
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    const-string v2, "service_item_key"

    const-class v3, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/region/ServiceItem;

    .line 109
    .local v0, "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/region/ServiceItem;->getInfo()I

    move-result v1

    sget v2, Lcom/fimi/kernel/R$string;->region_Mainland_China:I

    if-eq v1, v2, :cond_0

    .line 110
    iput-boolean v5, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isEmail:Z

    .line 111
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    sget v2, Lcom/fimi/libperson/R$string;->login_iphone_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/libperson/widget/TitleView;->setTvRightText(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v2, Lcom/fimi/libperson/R$string;->login_register_main_email_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v1, v4}, Lcom/fimi/libperson/widget/TitleView;->setRightTvIsVisible(Z)V

    .line 114
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlIphone:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterPhone:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterEmail:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-boolean v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isCheckEmail:Z

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v6, :cond_1

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_1

    .line 120
    invoke-direct {p0, v5}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->registerBtnIsClick(Z)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-direct {p0, v4}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->registerBtnIsClick(Z)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0, v4}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->registerBtnIsClick(Z)V

    goto :goto_0
.end method

.method public loginSuccess()V
    .locals 2

    .prologue
    .line 402
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 403
    const-string v1, "activity://app.main"

    invoke-static {p0, v1}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 404
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->readyGoThenKillAllActivity(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 369
    invoke-super {p0, p1}, Lcom/fimi/libperson/BasePersonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 371
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 655
    const/16 v0, 0x79

    if-ne p1, v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->finish()V

    .line 657
    const/4 v0, 0x0

    .line 659
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fimi/libperson/BasePersonActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerEmailResult(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 425
    if-eqz p1, :cond_1

    .line 427
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 428
    const-string v1, "activity://app.main"

    invoke-static {p0, v1}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 429
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->readyGoThenKillAllActivity(Landroid/content/Intent;)V

    .line 436
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    if-eqz p2, :cond_0

    .line 432
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public registerIphoneResult(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuceess"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 409
    if-eqz p1, :cond_1

    .line 411
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 412
    const-string v1, "activity://app.main"

    invoke-static {p0, v1}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 413
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->readyGoThenKillAllActivity(Landroid/content/Intent;)V

    .line 421
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    if-eqz p2, :cond_0

    .line 416
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvErrorHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvErrorHint:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/fimi/libperson/BasePersonActivity;->setStatusBarColor()V

    .line 96
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 97
    return-void
.end method

.method public updateSeconds(ZI)V
    .locals 3
    .param p1, "isComplete"    # Z
    .param p2, "seconds"    # I

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->selector_btn_register_get_verfication_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 392
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_btn_verification:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_get_verfication_unclick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$string;->login_second:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
