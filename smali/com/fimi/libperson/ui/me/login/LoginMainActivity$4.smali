.class Lcom/fimi/libperson/ui/me/login/LoginMainActivity$4;
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
    .line 237
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$400(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 241
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->loginPresenter:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v2, v2, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/libperson/presenter/LoginPresenter;->loginByPhone(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method
