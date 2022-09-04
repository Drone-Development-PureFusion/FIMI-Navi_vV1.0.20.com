.class Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;
.super Ljava/lang/Object;
.source "LoginMainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/me/login/LoginMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditTextWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 545
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

    .line 559
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 560
    sget v0, Lcom/fimi/libperson/R$id;->et_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 562
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    :cond_0
    :goto_0
    sget v0, Lcom/fimi/libperson/R$id;->et_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 588
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :cond_1
    sget v0, Lcom/fimi/libperson/R$id;->et_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 592
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v4, :cond_9

    .line 593
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$1400(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)V

    .line 599
    :cond_2
    :goto_1
    sget v0, Lcom/fimi/libperson/R$id;->et_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 600
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v4, :cond_a

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 601
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$1400(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)V

    .line 606
    :cond_3
    :goto_2
    return-void

    .line 563
    :cond_4
    sget v0, Lcom/fimi/libperson/R$id;->et_email_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 564
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$1300(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    .line 566
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 567
    :cond_5
    sget v0, Lcom/fimi/libperson/R$id;->et_email_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$1300(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    .line 570
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 573
    :cond_6
    sget v0, Lcom/fimi/libperson/R$id;->et_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 575
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 576
    :cond_7
    sget v0, Lcom/fimi/libperson/R$id;->et_email_password:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 577
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$1300(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    .line 579
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 580
    :cond_8
    sget v0, Lcom/fimi/libperson/R$id;->et_email_account:I

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$1300(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V

    .line 583
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvEmailErrorHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 595
    :cond_9
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$1400(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)V

    goto/16 :goto_1

    .line 603
    :cond_a
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$EditTextWatcher;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$1400(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)V

    goto/16 :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 550
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 555
    return-void
.end method
