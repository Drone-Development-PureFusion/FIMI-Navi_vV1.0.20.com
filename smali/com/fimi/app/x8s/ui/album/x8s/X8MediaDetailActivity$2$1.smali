.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2$1;
.super Ljava/lang/Object;
.source "X8MediaDetailActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/album/widget/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/album/widget/HackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->deleteItem(I)V

    .line 210
    return-void
.end method
