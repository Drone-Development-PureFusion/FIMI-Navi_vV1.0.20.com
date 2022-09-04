.class Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;
.super Ljava/lang/Object;
.source "X8CameraFragmentPrensenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;

    .prologue
    .line 543
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;->this$1:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;

    iput-object p2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 546
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;"
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v5, "LOCLAFILEDELETEITEM"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 547
    .local v3, "selectList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    .line 548
    .local v2, "select":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "currentDate":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;->this$1:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;

    iget-object v5, v5, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v5}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$2400(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    .line 550
    .local v1, "model":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isHeadView()Z

    move-result v6

    if-nez v6, :cond_1

    .line 553
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 554
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalFile(Z)V

    .line 556
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;->this$1:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;

    iget-object v5, v5, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v5}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1500(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1$1;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1$1;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 566
    .end local v0    # "currentDate":Ljava/lang/String;
    .end local v1    # "model":Lcom/fimi/album/entity/MediaModel;
    .end local v2    # "select":Lcom/fimi/album/entity/MediaModel;
    :cond_2
    return-void
.end method
