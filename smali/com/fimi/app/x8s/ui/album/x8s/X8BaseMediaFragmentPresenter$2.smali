.class Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;
.super Ljava/lang/Object;
.source "X8BaseMediaFragmentPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteCameraSelectFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    .prologue
    .line 646
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iput p2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 5
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;"
    const/16 v4, 0x377

    .line 649
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 650
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 651
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->val$finalI:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->val$finalI:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    iget v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->val$finalI:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->updateDeleteItem(I)V

    .line 657
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->val$finalI:I

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 658
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    invoke-static {}, Lcom/fimi/widget/CustomLoadManage;->dismiss()V

    .line 661
    :cond_1
    return-void
.end method
