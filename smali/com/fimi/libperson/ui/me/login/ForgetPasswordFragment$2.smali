.class Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;
.super Ljava/lang/Object;
.source "ForgetPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->OnClickListerner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$400(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnVerfication:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$100(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    move-result-object v0

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->VERIFICATION_CODE:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$300(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$200(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v2, v2, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->inputVerficationCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$100(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    move-result-object v0

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$300(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$200(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v2, v2, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtInputVerficationCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v3, v3, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$2;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v4, v4, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->inputPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
