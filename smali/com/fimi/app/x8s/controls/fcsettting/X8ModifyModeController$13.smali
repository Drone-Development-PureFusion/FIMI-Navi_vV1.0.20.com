.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;
.super Ljava/lang/Object;
.source "X8ModifyModeController.java"

# interfaces
.implements Lcom/fimi/network/ApkVersionManager$AppSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->showItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppSettingListener()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/network/ApkVersionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/network/ApkVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "open_Formatted_memory"

    invoke-virtual {v0, v1}, Lcom/fimi/network/ApkVersionManager;->isOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/network/ApkVersionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/network/ApkVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "open_sixpoint_calibrate"

    invoke-virtual {v0, v1}, Lcom/fimi/network/ApkVersionManager;->isOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 409
    :goto_1
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method
