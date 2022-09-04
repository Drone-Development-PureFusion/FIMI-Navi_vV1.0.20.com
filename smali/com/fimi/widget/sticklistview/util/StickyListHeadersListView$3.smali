.class Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 91
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 123
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-static {v0, p2}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->access$200(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;I)V

    .line 126
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 100
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    if-nez p2, :cond_1

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->loadMoreListener:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;->this$0:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->loadMoreListener:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;

    invoke-interface {v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;->OnLoadingMore()V

    goto :goto_0
.end method
