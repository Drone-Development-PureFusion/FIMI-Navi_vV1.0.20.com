.class public Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "X8LocalFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateLocalItemReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    .prologue
    .line 411
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>.UpdateLocalItemReceiver;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 414
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>.UpdateLocalItemReceiver;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "action":Ljava/lang/String;
    const-string v2, "UPDATELOCALITEMRECEIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    const-string v2, "UPDATELOCALITEM"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    .line 417
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v1, :cond_0

    .line 418
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->access$700(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->addNewItem(Lcom/fimi/album/entity/MediaModel;)V

    .line 422
    .end local v1    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    return-void
.end method
