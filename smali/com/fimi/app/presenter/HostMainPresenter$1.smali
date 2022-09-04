.class Lcom/fimi/app/presenter/HostMainPresenter$1;
.super Ljava/lang/Object;
.source "HostMainPresenter.java"

# interfaces
.implements Lcom/fimi/widget/DialogManager$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/presenter/HostMainPresenter;->openCameraDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/presenter/HostMainPresenter;

.field final synthetic val$dialoghint:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/app/presenter/HostMainPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/presenter/HostMainPresenter;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->this$0:Lcom/fimi/app/presenter/HostMainPresenter;

    iput-object p2, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->val$dialoghint:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dialogBtnLeftListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 322
    iget-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->val$dialoghint:Ljava/lang/String;

    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->this$0:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-static {v1}, Lcom/fimi/app/presenter/HostMainPresenter;->access$000(Lcom/fimi/app/presenter/HostMainPresenter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08043c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->this$0:Lcom/fimi/app/presenter/HostMainPresenter;

    iput-boolean v3, v0, Lcom/fimi/app/presenter/HostMainPresenter;->isProviderEnabled:Z

    .line 324
    iget-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->this$0:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-static {v0, v3}, Lcom/fimi/app/presenter/HostMainPresenter;->access$100(Lcom/fimi/app/presenter/HostMainPresenter;Z)V

    .line 326
    :cond_0
    return-void
.end method

.method public dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 311
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->val$dialoghint:Ljava/lang/String;

    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->this$0:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-static {v2}, Lcom/fimi/app/presenter/HostMainPresenter;->access$000(Lcom/fimi/app/presenter/HostMainPresenter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08043c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->this$0:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-static {v1}, Lcom/fimi/app/presenter/HostMainPresenter;->access$000(Lcom/fimi/app/presenter/HostMainPresenter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x522

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter$1;->this$0:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-static {v1}, Lcom/fimi/app/presenter/HostMainPresenter;->access$000(Lcom/fimi/app/presenter/HostMainPresenter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
