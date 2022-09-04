.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$14;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 318
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$14;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$14;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showChangeHomeDialog(I)V

    .line 323
    return-void
.end method
