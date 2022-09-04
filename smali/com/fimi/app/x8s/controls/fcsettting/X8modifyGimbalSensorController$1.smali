.class Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$1;
.super Ljava/lang/Object;
.source "X8modifyGimbalSensorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;->returnBack()V

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->closeItem()V

    .line 97
    return-void
.end method
