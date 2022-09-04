.class Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$2;
.super Ljava/lang/Object;
.source "X8RockerModeController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->showApDialog(I)V

    goto :goto_0
.end method
