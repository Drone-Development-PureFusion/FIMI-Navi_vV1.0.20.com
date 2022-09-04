.class Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$3;
.super Ljava/lang/Object;
.source "ServiceSettingActivity.java"

# interfaces
.implements Lcom/fimi/widget/DialogManager$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$3;->this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    iput p2, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$3;->val$position:I

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
    .line 453
    return-void
.end method

.method public dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 442
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "service_item_key"

    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$3;->this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    invoke-static {v2}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->access$300(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$3;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    invoke-static {}, Lcom/fimi/host/HostConstants;->initUrl()V

    .line 446
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string/jumbo v1, "user_protocol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 447
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$3;->this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->finish()V

    .line 448
    return-void
.end method
