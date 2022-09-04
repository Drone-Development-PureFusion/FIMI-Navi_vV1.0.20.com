.class Lcom/fimi/album/ui/albumfragment/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/ui/albumfragment/BaseFragment;->initTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/ui/albumfragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/fimi/album/ui/albumfragment/BaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/ui/albumfragment/BaseFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment$1;->this$0:Lcom/fimi/album/ui/albumfragment/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment$1;->this$0:Lcom/fimi/album/ui/albumfragment/BaseFragment;

    iget-object v0, v0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment$1;->this$0:Lcom/fimi/album/ui/albumfragment/BaseFragment;

    iget-object v0, v0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->querySelectSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment$1;->this$0:Lcom/fimi/album/ui/albumfragment/BaseFragment;

    iget-object v0, v0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->deleteSelectFile()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment$1;->this$0:Lcom/fimi/album/ui/albumfragment/BaseFragment;

    iget-object v0, v0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/example/album/R$string;->no_select_file:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
