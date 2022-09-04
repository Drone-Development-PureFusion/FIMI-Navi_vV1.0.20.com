.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$37;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showChangeHomeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$37;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$37;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 1276
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$37;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$37;->val$type:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->onSetHomeEvent(I)V

    .line 1281
    return-void
.end method
