.class Lcom/fimi/widget/sticklistview/util/AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/widget/sticklistview/util/AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$1;->this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$1;->this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-static {v0}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->access$201(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)V

    .line 49
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$1;->this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-static {v0}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->access$000(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$1;->this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-static {v0}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->access$101(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)V

    .line 44
    return-void
.end method
