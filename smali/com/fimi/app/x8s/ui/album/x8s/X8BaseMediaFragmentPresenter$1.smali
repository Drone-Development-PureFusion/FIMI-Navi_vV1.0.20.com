.class Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;
.super Landroid/os/Handler;
.source "X8BaseMediaFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    .prologue
    .line 75
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;"
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x378

    if-ne v2, v3, :cond_1

    .line 80
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isResh:Z

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x377

    if-ne v2, v3, :cond_0

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 83
    move v0, v1

    .line 84
    .local v0, "finalI":I
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v3, v3, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v3, v3, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v3, v3, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v4, v4, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->updateDeleteItem(I)V

    .line 82
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "finalI":I
    :cond_3
    invoke-static {}, Lcom/fimi/widget/CustomLoadManage;->dismiss()V

    goto :goto_0
.end method
