.class Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;
.super Ljava/lang/Object;
.source "ForgetPasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditTextWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 260
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 275
    sget v0, Lcom/fimi/libperson/R$id;->et_fp_email_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 276
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$700(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$800(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_0
    :goto_1
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$700(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    goto :goto_0

    .line 283
    :cond_2
    sget v0, Lcom/fimi/libperson/R$id;->et_input_verfication_code:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 285
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 286
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    .line 290
    :goto_2
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$1000(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    goto :goto_2

    .line 291
    :cond_4
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 292
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v4, :cond_5

    .line 294
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setIvShowPassword(Z)V

    .line 298
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    .line 306
    :goto_3
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_input_password_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setIvShowPassword(Z)V

    .line 304
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    goto :goto_3

    .line 308
    :cond_6
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password_again:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v4, :cond_7

    .line 312
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setIvShowPassword(Z)V

    .line 315
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    .line 323
    :goto_4
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_input_password_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvNewPasswordAgainUnified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v0, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setIvShowPassword(Z)V

    .line 321
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    goto :goto_4

    .line 327
    :cond_8
    sget v0, Lcom/fimi/libperson/R$id;->et_fp_email_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 329
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$800(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 330
    :cond_9
    sget v0, Lcom/fimi/libperson/R$id;->et_input_verfication_code:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 332
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    .line 333
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$1000(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 334
    :cond_a
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 336
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    .line 337
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_input_password_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 338
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 339
    :cond_b
    sget v0, Lcom/fimi/libperson/R$id;->et_new_password_again:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$900(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)V

    .line 342
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_input_password_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 343
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mTvFpVerficationHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->forget_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 265
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 270
    return-void
.end method
