.class Lcom/fimi/libperson/ui/me/login/LoginActivity$6;
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
    .line 236
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    const-string v2, "sp_person_user_type"

    sget-object v3, Lcom/fimi/kernel/Constants$UserType;->Guest:Lcom/fimi/kernel/Constants$UserType;

    invoke-virtual {v3}, Lcom/fimi/kernel/Constants$UserType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 240
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    const-string v2, "activity://app.main"

    invoke-static {v1, v2}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 241
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$6;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-static {v1, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->access$600(Lcom/fimi/libperson/ui/me/login/LoginActivity;Landroid/content/Intent;)V

    .line 242
    return-void
.end method
