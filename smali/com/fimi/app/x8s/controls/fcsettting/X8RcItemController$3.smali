.class Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$3;
.super Ljava/lang/Object;
.source "X8RcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRcCtrlModelListener(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->showRcCtrlModel(I)V

    .line 161
    return-void
.end method
