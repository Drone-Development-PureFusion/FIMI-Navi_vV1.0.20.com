.class Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$2;
.super Ljava/lang/Object;
.source "X8RcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->initActions()V
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
    .line 131
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    iget v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->currAPModel:I

    if-ne v0, p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    if-nez p1, :cond_2

    .line 138
    const/4 p1, 0x1

    .line 142
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->showApDialog(I)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 140
    const/4 p1, 0x0

    goto :goto_1
.end method
