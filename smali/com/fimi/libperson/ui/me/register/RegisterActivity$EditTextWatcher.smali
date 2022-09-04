.class Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/me/register/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditTextWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p2, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 444
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 458
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 459
    sget v0, Lcom/fimi/libperson/R$id;->et_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 461
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :cond_0
    :goto_0
    sget v0, Lcom/fimi/libperson/R$id;->et_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 487
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_1
    sget v0, Lcom/fimi/libperson/R$id;->et_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 491
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 492
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->login_get_verfication_unclick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 500
    :cond_2
    :goto_1
    sget v0, Lcom/fimi/libperson/R$id;->et_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 501
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$100(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 502
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v6, :cond_b

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtGetVelidationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 503
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v4}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    .line 512
    :cond_3
    :goto_2
    sget v0, Lcom/fimi/libperson/R$id;->et_verification:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 513
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$100(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 514
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v5, :cond_d

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v6, :cond_d

    .line 515
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v4}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    .line 524
    :cond_4
    :goto_3
    return-void

    .line 462
    :cond_5
    sget v0, Lcom/fimi/libperson/R$id;->et_email_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 463
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$700(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    .line 465
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 466
    :cond_6
    sget v0, Lcom/fimi/libperson/R$id;->et_email_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$700(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    .line 469
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 472
    :cond_7
    sget v0, Lcom/fimi/libperson/R$id;->et_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 474
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 475
    :cond_8
    sget v0, Lcom/fimi/libperson/R$id;->et_email_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 476
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$700(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    .line 478
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 479
    :cond_9
    sget v0, Lcom/fimi/libperson/R$id;->et_email_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$700(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    .line 482
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 495
    :cond_a
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 496
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvGetValidationCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$color;->selector_btn_register_get_verfication_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 505
    :cond_b
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto/16 :goto_2

    .line 508
    :cond_c
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto/16 :goto_2

    .line 517
    :cond_d
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto/16 :goto_3

    .line 520
    :cond_e
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto/16 :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 449
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 454
    return-void
.end method
