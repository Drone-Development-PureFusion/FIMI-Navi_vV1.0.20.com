.class Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$10;
.super Ljava/lang/Object;
.source "X8GeneralItemController.java"

# interfaces
.implements Lcom/fimi/widget/SwitchButton$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->showItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    if-eqz p2, :cond_0

    .line 235
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_OPTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_OPTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    goto :goto_0
.end method
