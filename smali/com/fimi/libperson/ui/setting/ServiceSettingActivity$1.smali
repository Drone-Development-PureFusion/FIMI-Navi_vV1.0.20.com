.class Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$1;
.super Ljava/lang/Object;
.source "ServiceSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "service_item_key"

    const-class v2, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/kernel/Constants;->isShowUserProtocol:Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->finish()V

    .line 85
    return-void
.end method
