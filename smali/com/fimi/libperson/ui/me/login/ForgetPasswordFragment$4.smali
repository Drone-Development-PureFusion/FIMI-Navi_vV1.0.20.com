.class Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;
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
    .line 177
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$600(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$602(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)Z

    .line 182
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 183
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/libperson/R$drawable;->iv_login_email_password:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 190
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 191
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$602(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Z)Z

    .line 186
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 187
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/libperson/R$drawable;->iv_login_email_password_show:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
