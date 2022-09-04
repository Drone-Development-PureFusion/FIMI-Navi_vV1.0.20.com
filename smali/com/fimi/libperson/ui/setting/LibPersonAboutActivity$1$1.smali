.class Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;
.super Ljava/lang/Object;
.source "LibPersonAboutActivity.java"

# interfaces
.implements Lcom/fimi/widget/DialogManager$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

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
    .line 160
    return-void
.end method

.method public dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    iget-object v0, v0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    invoke-virtual {v1}, Lcom/fimi/host/common/ProductEnum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v3, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;-><init>(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;)V

    invoke-direct {v2, v3}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/network/UserManager;->sendRepealAccredit(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 156
    return-void
.end method
