.class Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;
.super Ljava/lang/Object;
.source "X8AiLineHistoryAdapter2.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->showCancleDialog(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

.field final synthetic val$index:I

.field final synthetic val$info:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$info:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    iput p3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onRight()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$info:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v0, v4}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSaveFlag(I)V

    .line 213
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$info:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->updatelineSaveFlag(IJ)V

    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$index:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;->onItemChange(JII)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$info:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$index:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemRemoved(I)V

    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$index:I

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$4;->val$index:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemRangeChanged(II)V

    .line 220
    return-void
.end method
