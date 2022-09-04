.class Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$2;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$2;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$2;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-static {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->access$100(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)V

    .line 68
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$2;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-static {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->access$100(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)V

    .line 73
    return-void
.end method
