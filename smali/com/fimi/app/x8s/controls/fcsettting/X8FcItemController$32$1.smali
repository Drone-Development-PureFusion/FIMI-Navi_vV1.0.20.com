.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32$1;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetView()V

    .line 1150
    return-void
.end method
