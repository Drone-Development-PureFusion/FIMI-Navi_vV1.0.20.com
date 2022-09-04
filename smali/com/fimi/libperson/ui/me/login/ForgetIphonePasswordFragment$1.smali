.class Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$1;
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
    .line 147
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$000(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$100(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$1;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->mEtFiAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->sendIphone(Ljava/lang/String;)V

    .line 152
    return-void
.end method
