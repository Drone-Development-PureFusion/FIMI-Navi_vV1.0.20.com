.class Lcom/fimi/libperson/ui/setting/LanguageSettingActivity$1;
.super Landroid/os/Handler;
.source "LanguageSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fimi.app.changelanguge"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->access$000(Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 49
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->access$100(Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;)V

    .line 52
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
