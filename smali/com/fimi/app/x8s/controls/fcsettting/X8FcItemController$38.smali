.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$38;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showModeSeniorDialog()V
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
    .line 1294
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$38;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$38;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 1298
    return-void
.end method

.method public onRight()V
    .locals 3

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$38;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;IZ)V

    .line 1303
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$38;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 1304
    return-void
.end method
