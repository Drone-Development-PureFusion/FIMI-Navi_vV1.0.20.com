.class Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$10;
.super Ljava/lang/Object;
.source "X8MainFcAllSettingControler.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showFlightlog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 740
    return-void
.end method

.method public onRight()V
    .locals 4

    .prologue
    .line 744
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    const-string v2, "sp_person_user_type"

    sget-object v3, Lcom/fimi/kernel/Constants$UserType;->Ideal:Lcom/fimi/kernel/Constants$UserType;

    invoke-virtual {v3}, Lcom/fimi/kernel/Constants$UserType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 745
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$10;->val$context:Landroid/content/Context;

    const-string v2, "activity://app.SplashActivity"

    invoke-static {v1, v2}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 746
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$10;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 747
    return-void
.end method
