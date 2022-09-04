.class Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$2;
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
    .line 98
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

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
    .line 101
    if-nez p1, :cond_1

    sget v0, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    .line 102
    .local v0, "mapStyle":I
    :goto_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    sget-object v2, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_STYLE:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 103
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->setMapStyle(I)V

    .line 104
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;->switchMapStyle(I)V

    .line 108
    :cond_0
    return-void

    .line 101
    .end local v0    # "mapStyle":I
    :cond_1
    sget v0, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_SATELLITE:I

    goto :goto_0
.end method
