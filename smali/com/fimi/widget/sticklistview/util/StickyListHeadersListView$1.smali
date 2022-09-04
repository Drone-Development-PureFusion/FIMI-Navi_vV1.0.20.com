.class Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$1;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;


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
    .line 52
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$1;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "header"    # Landroid/view/View;
    .param p2, "itemPosition"    # I
    .param p3, "headerId"    # J

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$1;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-static {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->access$000(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$1;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-static {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->access$000(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$1;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 61
    :cond_0
    return-void
.end method
