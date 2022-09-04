.class Lcom/fimi/app/ui/main/HostNewMainActivity$6;
.super Ljava/lang/Object;
.source "HostNewMainActivity.java"

# interfaces
.implements Lcom/fimi/widget/DialogManager$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/ui/main/HostNewMainActivity;->showNewApkVersionDialog(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

.field final synthetic val$dto:Lcom/fimi/network/entity/ApkVersionDto;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/app/ui/main/HostNewMainActivity;Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$6;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    iput-object p2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$6;->val$dto:Lcom/fimi/network/entity/ApkVersionDto;

    iput-object p3, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$6;->val$savePath:Ljava/lang/String;

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
    .line 342
    return-void
.end method

.method public dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$6;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-static {v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->access$400(Lcom/fimi/app/ui/main/HostNewMainActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/fimi/apk/DownloadApkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .local v0, "updateService":Landroid/content/Intent;
    const-string v1, "down_url"

    iget-object v2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$6;->val$dto:Lcom/fimi/network/entity/ApkVersionDto;

    invoke-virtual {v2}, Lcom/fimi/network/entity/ApkVersionDto;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v1, "down_savepath"

    iget-object v2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$6;->val$savePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$6;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-static {v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->access$500(Lcom/fimi/app/ui/main/HostNewMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 338
    return-void
.end method
