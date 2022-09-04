.class Lcom/fimi/libperson/ui/me/login/LoginMainActivity$1;
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
    .line 192
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$1;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$1;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$000(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$1;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->mRlEmail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$1;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$100(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginMainActivity$1;->this$0:Lcom/fimi/libperson/ui/me/login/LoginMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/login/LoginMainActivity;->access$100(Lcom/fimi/libperson/ui/me/login/LoginMainActivity;Z)V

    goto :goto_0
.end method
