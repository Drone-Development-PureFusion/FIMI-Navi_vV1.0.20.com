.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$4;
.super Ljava/lang/Object;
.source "X8MediaDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$4;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 237
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$4;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateItem(I)V

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$4;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->showTopBottom(I)V

    .line 243
    return-void
.end method
