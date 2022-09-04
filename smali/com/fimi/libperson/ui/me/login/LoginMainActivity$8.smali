.class Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;
.super Ljava/lang/Object;
.source "LoginMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->OnClickListerner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$600(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$600(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$600(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getState()Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    move-result-object v0

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$600(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setBack()V

    .line 291
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$700(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$600(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 292
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    sget v2, Lcom/fimi/libperson/R$string;->login_login_main_email_title:I

    invoke-virtual {v1, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$1100(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v0, v3}, Lcom/fimi/libperson/widget/TitleView;->setTvRightVisible(I)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$600(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setBack()V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$900(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$900(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$900(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->getState()Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    move-result-object v0

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    if-ne v0, v1, :cond_3

    .line 304
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$900(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setBack()V

    .line 305
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$700(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$900(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 306
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTvTitleNmae:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    sget v2, Lcom/fimi/libperson/R$string;->login_login_main_phone_title:I

    invoke-virtual {v1, v2}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v0, v3}, Lcom/fimi/libperson/widget/TitleView;->setTvRightVisible(I)V

    .line 308
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$900(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->setBack()V

    goto/16 :goto_0

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$8;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->finish()V

    goto/16 :goto_0
.end method
