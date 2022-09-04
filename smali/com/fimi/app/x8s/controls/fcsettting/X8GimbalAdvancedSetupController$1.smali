.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$1;
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
    .line 54
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;->returnBack()V

    .line 59
    return-void
.end method
