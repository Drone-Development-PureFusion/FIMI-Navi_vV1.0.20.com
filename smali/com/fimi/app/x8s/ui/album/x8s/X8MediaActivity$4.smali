.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$4;
.super Ljava/lang/Object;
.source "X8MediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$4;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$4;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->enterSelectMode(ZZ)V

    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$4;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-virtual {v0, v2}, Lcom/fimi/album/widget/HackyViewPager;->setScrollble(Z)V

    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$4;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 235
    return-void
.end method
