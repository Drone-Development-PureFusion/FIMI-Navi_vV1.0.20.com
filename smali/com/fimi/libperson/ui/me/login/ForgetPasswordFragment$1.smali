.class Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;
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
    .line 135
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$000(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mBtnSendEmail:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$100(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    move-result-object v0

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->mEtFpEmailAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$202(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$300(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->access$200(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->sendEmail(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
