.class Lcom/fimi/libperson/ui/me/login/LoginActivity$7;
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
    .line 244
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$7;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/kernel/Constants;->isShowUserProtocol:Z

    .line 265
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$7;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->access$700(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity://person.service"

    invoke-static {v1, v2}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$7;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    return-void
.end method
