.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;
.super Ljava/lang/Object;
.source "X8GimbalAdvancedSetupController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;)V

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setGcParamsNew(IFFFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 76
    return-void
.end method
