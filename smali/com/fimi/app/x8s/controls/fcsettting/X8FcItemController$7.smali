.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$7;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;


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
    .line 225
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 231
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 232
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 236
    :cond_0
    return-void
.end method
