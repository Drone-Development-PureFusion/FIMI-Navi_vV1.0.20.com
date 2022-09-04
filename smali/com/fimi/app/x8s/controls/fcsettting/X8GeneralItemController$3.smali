.class Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$3;
.super Ljava/lang/Object;
.source "X8GeneralItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->initActions()V
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
    .line 110
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(ILjava/lang/String;I)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "last"    # I

    .prologue
    .line 113
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 115
    .local v0, "isShowMetric":Z
    :goto_0
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 116
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    sget-object v2, Lcom/fimi/x8sdk/common/Constants;->X8_UNITY_OPTION:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 117
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->setShowmMtric(Z)V

    .line 118
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->resetPrexString(Landroid/content/Context;)V

    .line 119
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;->switchUnity(Z)V

    .line 124
    :cond_0
    return-void

    .line 113
    .end local v0    # "isShowMetric":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
