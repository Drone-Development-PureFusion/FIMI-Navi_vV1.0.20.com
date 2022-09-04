.class Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$5;
.super Ljava/lang/Object;
.source "X8BlackBoxController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onRight()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->deleteFile()V

    .line 204
    return-void
.end method
