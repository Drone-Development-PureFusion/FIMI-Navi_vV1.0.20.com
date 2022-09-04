.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$1;
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
    .line 98
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;->returnBack()V

    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->closeItem()V

    .line 104
    return-void
.end method
