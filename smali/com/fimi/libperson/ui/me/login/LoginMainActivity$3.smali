.class Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;
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
    .line 220
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$300(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$302(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)Z

    .line 225
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 226
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mIvShowIphonePassword:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/libperson/R$drawable;->iv_login_email_password:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 233
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 234
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$302(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)Z

    .line 229
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 230
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$3;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mIvShowIphonePassword:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/libperson/R$drawable;->iv_login_email_password_show:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
