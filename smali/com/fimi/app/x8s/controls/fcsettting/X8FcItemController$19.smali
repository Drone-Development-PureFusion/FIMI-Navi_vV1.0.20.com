.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$19;
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
    .line 401
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$19;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    .line 404
    if-eqz p2, :cond_0

    .line 405
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$19;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showDistanceDialog()V

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$19;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V

    goto :goto_0
.end method
