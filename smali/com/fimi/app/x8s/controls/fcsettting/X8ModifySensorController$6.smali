.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$6;
.super Ljava/lang/Object;
.source "X8ModifySensorController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->setImuState(ILjava/lang/String;)V
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
    .line 193
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleButtonClick()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->dismiss()V

    .line 198
    :cond_0
    return-void
.end method
