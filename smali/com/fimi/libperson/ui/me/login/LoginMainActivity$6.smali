.class Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;
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
    .line 253
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    .line 256
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$700(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$600(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 257
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$600(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->setEmailAddress(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v0, v2}, Lcom/fimi/libperson/widget/TitleView;->setTvRightVisible(I)V

    .line 260
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginEmail:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mBtnLoginIphone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$800(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 266
    return-void
.end method
