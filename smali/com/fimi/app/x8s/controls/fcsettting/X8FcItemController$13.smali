.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;
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
    .line 295
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getDroneState()V

    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_item_novice_mode_disable_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 314
    :goto_0
    return-void

    .line 304
    :cond_0
    if-eqz p2, :cond_1

    .line 306
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;BZ)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0, v2, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;BZ)V

    .line 311
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;IZ)V

    goto :goto_0
.end method
