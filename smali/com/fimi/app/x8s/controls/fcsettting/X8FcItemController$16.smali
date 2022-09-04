.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/widget/SwitchButton$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/widget/SwitchButton;->getToggleOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_item_novice_mode_disable_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 349
    :goto_0
    return-void

    .line 343
    :cond_0
    if-eqz p2, :cond_1

    .line 344
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0, v1, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;IZ)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showModeSeniorDialog()V

    goto :goto_0
.end method
