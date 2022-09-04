.class Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;
.super Ljava/lang/Object;
.source "X8MediaDetailPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->deleteItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 269
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 3
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 273
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;"
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$000(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 274
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$000(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 275
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$200(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$000(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->deleteItem(I)V

    .line 276
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1, v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$300(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/entity/MediaModel;)V

    .line 277
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->finish()V

    .line 279
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->setOnDestory()V

    .line 290
    .end local v0    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :goto_0
    return-void

    .line 280
    .restart local v0    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$000(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 281
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$000(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateItem(I)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$000(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateItem(I)V

    goto :goto_0

    .line 286
    .end local v0    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->finish()V

    .line 287
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->setOnDestory()V

    goto :goto_0
.end method
