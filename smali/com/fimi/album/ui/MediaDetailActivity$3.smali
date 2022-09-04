.class Lcom/fimi/album/ui/MediaDetailActivity$3;
.super Ljava/lang/Object;
.source "MediaDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    .line 90
    iput-object p1, p0, Lcom/fimi/album/ui/MediaDetailActivity$3;->this$0:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity$3;->this$0:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-static {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->access$100(Lcom/fimi/album/ui/MediaDetailActivity;)Lcom/fimi/album/presenter/MediaDetailPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/album/presenter/MediaDetailPresenter;->updateItem(I)V

    .line 99
    return-void
.end method
