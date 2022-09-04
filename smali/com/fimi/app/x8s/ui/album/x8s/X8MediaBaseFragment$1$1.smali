.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1$1;
.super Ljava/lang/Object;
.source "X8MediaBaseFragment.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onRight()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteCameraSelectFile()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteSelectFile()V

    goto :goto_0
.end method
