.class public Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;
.super Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;
.source "X8LocalMediaLocalFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doTrans()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method getContentID()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/fimi/app/x8s/R$layout;->x8_fragment_local_media:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected initData(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    return-void
.end method

.method protected initMVP()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method judgeTypeCurrentFragment()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public unRegisterReciver()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->unRegisterReciver()V

    .line 65
    :cond_0
    return-void
.end method
