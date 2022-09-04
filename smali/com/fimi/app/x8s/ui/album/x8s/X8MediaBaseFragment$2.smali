.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$2;
.super Ljava/lang/Object;
.source "X8MediaBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->initTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->querySelectSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->downLoadFile()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/fimi/app/x8s/R$string;->no_select_file:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
