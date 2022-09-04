.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$3;
.super Ljava/lang/Object;
.source "X8ModifySensorController.java"

# interfaces
.implements Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;
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
    .line 121
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFinish(ILjava/lang/String;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "erreoCode"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->setImuState(ILjava/lang/String;)V

    .line 154
    return-void
.end method

.method public checkProgress()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public startCheck()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    new-instance v1, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$502(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->show()V

    .line 135
    return-void
.end method
