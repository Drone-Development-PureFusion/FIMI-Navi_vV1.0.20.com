.class public Lcom/fimi/album/ui/albumfragment/LocalFragment;
.super Lcom/fimi/album/ui/albumfragment/BaseFragment;
.source "LocalFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fimi/album/ui/albumfragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static obtaion()Lcom/fimi/album/ui/albumfragment/LocalFragment;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fimi/album/ui/albumfragment/LocalFragment;->obtaion(Landroid/os/Bundle;)Lcom/fimi/album/ui/albumfragment/LocalFragment;

    move-result-object v0

    return-object v0
.end method

.method public static obtaion(Landroid/os/Bundle;)Lcom/fimi/album/ui/albumfragment/LocalFragment;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 19
    new-instance v1, Lcom/fimi/album/ui/albumfragment/LocalFragment;

    invoke-direct {v1}, Lcom/fimi/album/ui/albumfragment/LocalFragment;-><init>()V

    .line 20
    .local v1, "mVideoFragment":Lcom/fimi/album/ui/albumfragment/LocalFragment;
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {v1}, Lcom/fimi/album/ui/albumfragment/LocalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 22
    .local v0, "bundle1":Landroid/os/Bundle;
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 24
    .end local v0    # "bundle1":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method


# virtual methods
.method getContentID()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/example/album/R$layout;->album_fragment_local_media:I

    return v0
.end method

.method public notifyAddCallback(Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 40
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/fimi/album/ui/albumfragment/BaseFragment;->onStart()V

    .line 35
    return-void
.end method
