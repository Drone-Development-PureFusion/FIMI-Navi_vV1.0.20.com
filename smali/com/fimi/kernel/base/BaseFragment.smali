.class public abstract Lcom/fimi/kernel/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract doTrans()V
.end method

.method public getBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    return-void
.end method

.method public abstract getLayoutId()I
.end method

.method public getLayoutView()Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract initData(Landroid/view/View;)V
.end method

.method protected abstract initMVP()V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/fimi/kernel/base/BaseFragment;->mActivity:Landroid/app/Activity;

    .line 26
    iput-object p1, p0, Lcom/fimi/kernel/base/BaseFragment;->mContext:Landroid/content/Context;

    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseFragment;->getLayoutView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseFragment;->getLayoutView()Landroid/view/View;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseFragment;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseFragment;->initData(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseFragment;->initMVP()V

    .line 40
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseFragment;->doTrans()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 88
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 93
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseFragment;->getBundle(Landroid/os/Bundle;)V

    .line 59
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    return-void
.end method
