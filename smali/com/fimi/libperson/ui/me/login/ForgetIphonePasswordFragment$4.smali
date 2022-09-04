.class Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;
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
    .line 183
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$500(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$502(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)Z

    .line 188
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 189
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/libperson/R$drawable;->iv_login_email_password:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 196
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 197
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$502(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;Z)Z

    .line 192
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtNewPasswordAgain:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 193
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$4;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mIvShowPasswordAgain:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/libperson/R$drawable;->iv_login_email_password_show:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
