.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;
.super Ljava/lang/Object;
.source "X8ModifySensorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->mOncheckImuLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    invoke-direct {v1, v2, v3, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;-><init>(Landroid/content/Context;Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;)V

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    .line 113
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->showImuDialog()V

    goto :goto_0
.end method
