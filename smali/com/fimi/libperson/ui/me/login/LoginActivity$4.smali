.class Lcom/fimi/libperson/ui/me/login/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/login/LoginActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string/jumbo v1, "user_protocol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->access$100(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Lcom/fimi/widget/DialogManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginActivity$4$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$4$1;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 207
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->access$100(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Lcom/fimi/widget/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->access$500(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginTwitter()V

    goto :goto_0
.end method
