.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$2;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
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
    .line 126
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V

    .line 130
    return-void
.end method
