.class Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/register/RegisterActivity;->OnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-boolean v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isShowIphonePassword:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isShowIphonePassword:Z

    .line 267
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 268
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mIvShowIphonePassword:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/libperson/R$drawable;->iv_login_email_password:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 275
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 276
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isShowIphonePassword:Z

    .line 271
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtIphonePassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 272
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$3;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mIvShowIphonePassword:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/libperson/R$drawable;->iv_login_email_password_show:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
