.class Lcom/fimi/app/presenter/HostMainPresenter$2;
.super Ljava/lang/Object;
.source "HostMainPresenter.java"

# interfaces
.implements Lcom/fimi/widget/DialogManager$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/presenter/HostMainPresenter;->showGpsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/presenter/HostMainPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/presenter/HostMainPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/presenter/HostMainPresenter;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/fimi/app/presenter/HostMainPresenter$2;->this$0:Lcom/fimi/app/presenter/HostMainPresenter;

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
    .line 360
    return-void
.end method

.method public dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter$2;->this$0:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-static {v1}, Lcom/fimi/app/presenter/HostMainPresenter;->access$000(Lcom/fimi/app/presenter/HostMainPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 355
    return-void
.end method
