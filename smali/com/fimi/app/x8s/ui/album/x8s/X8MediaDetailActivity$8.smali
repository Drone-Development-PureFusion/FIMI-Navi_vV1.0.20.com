.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$8;
.super Ljava/lang/Object;
.source "X8MediaDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 276
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$8;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$8;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$8;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/album/widget/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/album/widget/HackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->downloadFile(I)V

    .line 284
    return-void
.end method
