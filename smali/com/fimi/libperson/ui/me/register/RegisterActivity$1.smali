.class Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;
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
    .line 201
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$000(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 205
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbIphoneSelectService:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mCbEmailSelectService:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iput-boolean v3, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isEmail:Z

    .line 210
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    sget v2, Lcom/fimi/libperson/R$string;->login_email_title:I

    invoke-virtual {v1, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setTvRightText(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_register_main_phone_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterPhone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterEmail:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlIphone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$100(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtGetVelidationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 218
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v4}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    .line 243
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iput-boolean v4, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->isEmail:Z

    .line 227
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    sget v2, Lcom/fimi/libperson/R$string;->login_iphone_title:I

    invoke-virtual {v1, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setTvRightText(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mTvTitleNmae:Landroid/widget/TextView;

    sget v1, Lcom/fimi/libperson/R$string;->login_register_main_email_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mRlIphone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterPhone:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mBtnRegisterEmail:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$300(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v6, :cond_3

    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtEmailPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_3

    .line 235
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v4}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto :goto_0

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$1;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto :goto_0
.end method
