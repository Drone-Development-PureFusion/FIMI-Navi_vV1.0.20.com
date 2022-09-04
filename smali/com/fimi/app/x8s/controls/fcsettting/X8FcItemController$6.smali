.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$6;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;


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
    .line 199
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(ILjava/lang/String;I)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "last"    # I

    .prologue
    .line 202
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "value":I
    if-nez p1, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v1, p3, v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showFailsafeDialog(III)V

    .line 222
    return-void

    .line 206
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 207
    const/4 v0, 0x2

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
