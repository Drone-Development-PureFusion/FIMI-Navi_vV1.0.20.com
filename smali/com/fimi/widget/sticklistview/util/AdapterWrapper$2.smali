.class Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;
.super Ljava/lang/Object;
.source "AdapterWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->configureHeader(Lcom/fimi/widget/sticklistview/util/WrapperView;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;->this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    iput p2, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;->this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-static {v2}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->access$300(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;->this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    iget-object v2, v2, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    iget v3, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;->val$position:I

    invoke-interface {v2, v3}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    .line 141
    .local v0, "headerId":J
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;->this$0:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-static {v2}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->access$300(Lcom/fimi/widget/sticklistview/util/AdapterWrapper;)Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;

    move-result-object v2

    iget v3, p0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$2;->val$position:I

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;->onHeaderClick(Landroid/view/View;IJ)V

    .line 143
    .end local v0    # "headerId":J
    :cond_0
    return-void
.end method
