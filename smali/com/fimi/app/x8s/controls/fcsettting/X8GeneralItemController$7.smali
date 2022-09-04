.class Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$7;
.super Ljava/lang/Object;
.source "X8GeneralItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->restSystemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->showRestParamDialog()V

    .line 159
    return-void
.end method
