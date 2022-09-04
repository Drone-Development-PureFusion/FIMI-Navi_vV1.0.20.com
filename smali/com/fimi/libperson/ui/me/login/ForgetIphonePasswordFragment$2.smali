.class Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;
.super Ljava/lang/Object;
.source "ForgetIphonePasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->OnClickListerner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$200(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 158
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mBtnFiLoginIphone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$300(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    move-result-object v0

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$100(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v2, v2, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->inputVerficationCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$100(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v2, v2, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiVerification:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v3, v3, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    .line 163
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v4, v4, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->inputPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
