.class Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;
.super Ljava/lang/Object;
.source "ForgetIphonePasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditTextWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 296
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 310
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 311
    sget v0, Lcom/fimi/libperson/R$id;->et_fi_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_get_verfication_unclick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiGetValidationCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->selector_btn_register_get_verfication_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 319
    :cond_2
    sget v0, Lcom/fimi/libperson/R$id;->et_fi_verification:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 320
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$700(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)V

    .line 325
    :goto_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiErrorHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$700(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)V

    goto :goto_1

    .line 326
    :cond_4
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 327
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 328
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v4, :cond_5

    .line 329
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setIvShowPassword(Z)V

    .line 332
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$700(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)V

    .line 339
    :goto_2
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_input_password_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 334
    :cond_5
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setIvShowPassword(Z)V

    .line 337
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$700(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)V

    goto :goto_2

    .line 341
    :cond_6
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password_again:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 343
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v4, :cond_7

    .line 344
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setIvShowPassword(Z)V

    .line 347
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$700(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)V

    .line 354
    :goto_3
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_input_password_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 355
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mTvFiPasswordErrorHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-virtual {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setIvShowPassword(Z)V

    .line 352
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$700(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)V

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 301
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 306
    return-void
.end method
