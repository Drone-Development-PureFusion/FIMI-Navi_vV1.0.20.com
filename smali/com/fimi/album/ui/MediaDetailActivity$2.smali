.class Lcom/fimi/album/ui/MediaDetailActivity$2;
.super Ljava/lang/Object;
.source "MediaDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/ui/MediaDetailActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/ui/MediaDetailActivity;


# direct methods
.method constructor <init>(Lcom/fimi/album/ui/MediaDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/ui/MediaDetailActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fimi/album/ui/MediaDetailActivity$2;->this$0:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity$2;->this$0:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-static {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->access$100(Lcom/fimi/album/ui/MediaDetailActivity;)Lcom/fimi/album/presenter/MediaDetailPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/ui/MediaDetailActivity$2;->this$0:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-static {v1}, Lcom/fimi/album/ui/MediaDetailActivity;->access$000(Lcom/fimi/album/ui/MediaDetailActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/album/presenter/MediaDetailPresenter;->deleteItem(I)V

    .line 88
    return-void
.end method
