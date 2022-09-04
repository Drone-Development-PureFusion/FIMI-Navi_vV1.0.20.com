.class Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$9;
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
    .line 202
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    if-eqz p2, :cond_0

    .line 207
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->setRectification(Z)V

    .line 208
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_RECTIFYIN_OPTION:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 213
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v2

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 214
    return-void

    .line 210
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_RECTIFYIN_OPTION:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 211
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->setRectification(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 213
    goto :goto_1
.end method
