.class Lcom/fimi/libperson/ui/me/login/LoginActivity$4$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/fimi/widget/DialogManager$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/login/LoginActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/libperson/ui/me/login/LoginActivity$4;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/login/LoginActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/libperson/ui/me/login/LoginActivity$4;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$4$1;->this$1:Lcom/fimi/libperson/ui/me/login/LoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dialogBtnLeftListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 205
    return-void
.end method

.method public dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 198
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string/jumbo v1, "user_protocol"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 199
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$4$1;->this$1:Lcom/fimi/libperson/ui/me/login/LoginActivity$4;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginActivity$4;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->access$500(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginTwitter()V

    .line 200
    return-void
.end method
